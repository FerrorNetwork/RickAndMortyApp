//
//  RMService.swift
//  RickAndMortyApp
//
//  Created by Данил on 25.01.2023.
//

import Foundation

final class RMService {
    static let shared = RMService()
    
    private let cacheManager = RMAPICacheManager()
    
    private init() {}
    
    enum RMSErviceError: Error {
        case failedToCreateRequest
        case failedRoGetData
    }
    
    public func execute<T: Codable>
    (_ request: RMRequest,
     expecting type: T.Type,
    completion: @escaping (Result<T, Error>) -> Void
    ) {
        if let cachedData = cacheManager.cachedResponse(for: request.endpoint, url: request.url) {
            do {
                let result = try JSONDecoder().decode(type.self, from: cachedData)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
            return
        }
        
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMSErviceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { [weak self] data, _, error in
            
            guard let data = data, error == nil else {
                completion(.failure(error ?? RMSErviceError.failedRoGetData))
                return
            }
            
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                self?.cacheManager.setCache(for: request.endpoint, url: request.url, data: data)
                completion(.success(result))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else {
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        
        return request
    }
}
