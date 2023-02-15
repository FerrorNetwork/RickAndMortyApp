//
//  RMEndpoint.swift
//  RickAndMortyApp
//
//  Created by Данил on 25.01.2023.
//

import Foundation

@frozen enum RMEndpoint: String, CaseIterable, Hashable {
    case character
    case location
    case episode
}
