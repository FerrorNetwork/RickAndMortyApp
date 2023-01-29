//
//  Extensions.swift
//  RickAndMortyApp
//
//  Created by Данил on 27.01.2023.
//

import UIKit

extension UIView {
    func addSubview(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
