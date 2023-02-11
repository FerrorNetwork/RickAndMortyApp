//
//  RMCharacterInfoCollectionViewCellViewModel.swift
//  RickAndMortyApp
//
//  Created by Данил on 11.02.2023.
//

import Foundation

final class RMCharacterInfoCollectionViewCellViewModel {
    public var value: String
    public var title: String
    
    init(
        value: String,
        title: String
    ) {
        self.title = title
        self.value = value
    }
}
