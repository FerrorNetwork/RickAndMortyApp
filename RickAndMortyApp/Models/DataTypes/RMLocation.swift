//
//  RMLocation.swift
//  RickAndMortyApp
//
//  Created by Данил on 25.01.2023.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name, type, dimension: String
    let residents: [String]
    let url: String
    let created: String
}
