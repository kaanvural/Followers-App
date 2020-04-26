//
//  GFAlertContainer.swift
//  GitHubFollowers-App
//
//  Created by Kaan on 26.04.2020.
//  Copyright © 2020 Kaan. All rights reserved.
//

import UIKit

class GFAlertContainer: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
       backgroundColor       = .systemBackground
       
       layer.cornerRadius    = 16
       layer.borderWidth     = 2
       layer.borderColor     = UIColor.white.cgColor
    }
}
