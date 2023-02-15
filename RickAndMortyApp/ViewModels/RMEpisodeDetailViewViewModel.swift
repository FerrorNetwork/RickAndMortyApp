//
//  RMEpisodeDetailViewViewModel.swift
//  RickAndMortyApp
//
//  Created by Данил on 15.02.2023.
//

import UIKit

class RMEpisodeDetailViewViewModel {
    private let url: URL?
    
    init(url: URL?) {
        self.url = url
        fetchEpisodeData()
    }
    
    private func fetchEpisodeData() {
        guard let endpointUrl = url, let request = RMRequest(url: endpointUrl) else {
            return
        }
        RMService.shared.execute(request, expecting: RMEpisode.self) { result in
            switch result {
            case .success(let success):
                print(String(describing: success))
            case .failure(let failure):
                fatalError(String(describing: failure))
            }
        }
    }
}
