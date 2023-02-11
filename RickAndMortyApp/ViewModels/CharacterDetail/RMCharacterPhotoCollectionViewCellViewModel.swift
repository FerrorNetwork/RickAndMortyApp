//
//  RMCharacterPhotoCollectionViewCellViewModel.swift
//  RickAndMortyApp
//
//  Created by Данил on 11.02.2023.
//

import Foundation

final class RMCharacterPhotoCollectionViewCellViewModel {
    
    private let imgaeUrl: URL?
    
    init(imageURL: URL) {
        self.imgaeUrl = imageURL
    }
    
    public func fetchImage(complition: @escaping (Result<Data, Error>) -> Void) {
        guard let imgaeUrl = imgaeUrl else {
            complition(.failure(URLError.badServerResponse as! Error))
            return
        }
        RMImageLoader.shared.downloadImage(imgaeUrl, completion: complition)
    }
}
