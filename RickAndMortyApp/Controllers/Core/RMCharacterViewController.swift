//
//  RMCharacterViewController.swift
//  RickAndMortyApp
//
//  Created by Данил on 25.01.2023.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(endpoint: .character, pathComponents: ["2"])
        
        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
            switch result {
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
    
}
