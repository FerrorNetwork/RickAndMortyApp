//
//  RMCharacter.swift
//  RickAndMortyApp
//
//  Created by Данил on 25.01.2023.
//

import UIKit

struct RMCharacter: Codable {
    let id: Int
    let name, species, type: String
    let status: RMCharacterStatus
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}



