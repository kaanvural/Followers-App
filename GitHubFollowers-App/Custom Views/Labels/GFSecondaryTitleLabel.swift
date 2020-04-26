//
//  GFSecondaryTitleLabel.swift
//  GitHubFollowers-App
//
//  Created by Kaan on 24.04.2020.
//  Copyright © 2020 Kaan. All rights reserved.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(fontSize: CGFloat) {
        super.init(frame: .zero)
        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
        configure()
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        textColor                   = .secondaryLabel      //modifies according to light/dark mode
        
        adjustsFontSizeToFitWidth   = true
        minimumScaleFactor          = 0.90
        
        lineBreakMode               = .byTruncatingTail
    }
}
