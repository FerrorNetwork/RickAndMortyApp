//
//  RMEpisodeDetailViewController.swift
//  RickAndMortyApp
//
//  Created by Данил on 15.02.2023.
//

import UIKit

final class RMEpisodeDetailViewController: UIViewController {
    
    private let viewModel: RMEpisodeDetailViewViewModel
    
    init(url: URL?){
        self.viewModel = .init(url: url)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        title = "Episode"
    }

}
