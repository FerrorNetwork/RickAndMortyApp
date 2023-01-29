//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMortyApp
//
//  Created by Данил on 29.01.2023.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
