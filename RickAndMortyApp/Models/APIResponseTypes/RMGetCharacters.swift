//
//  RMGetCharacters.swift
//  RickAndMortyApp
//
//  Created by Данил on 27.01.2023.
//

import Foundation

struct RMGetCharacters: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String
        let prev: String
    }
    let info: Info
    let results: [RMCharacter]
}


