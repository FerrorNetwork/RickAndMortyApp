//
//  RMCharacterStatus.swift
//  RickAndMortyApp
//
//  Created by Данил on 27.01.2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
