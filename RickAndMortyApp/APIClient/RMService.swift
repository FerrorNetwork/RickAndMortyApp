//
//  RMService.swift
//  RickAndMortyApp
//
//  Created by Данил on 25.01.2023.
//

import Foundation

final class RMService {
    static let shared = RMService()
    
    private init() {}
    
    public func execute<T: Codable>
    (_ request: RMRequest,
     expecting type: T.Type,
    completion: @escaping (Result<String, Error>) -> Void
    ) {
        
    }
}
