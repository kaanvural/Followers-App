//
//  GFTitleLabel.swift
//  GitHubFollowers-App
//
//  Created by Kaan on 23.04.2020.
//  Copyright © 2020 Kaan. All rights reserved.
//

import UIKit

class GFTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        self.init(frame: .zero)     //calls above initializer, no need to add configure()
        self.textAlignment  = textAlignment
        self.font           = UIFont.systemFont(ofSize: fontSize, weight: .bold)
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        textColor                   = .label      //modifies according to light/dark mode
        
        adjustsFontSizeToFitWidth   = true
        minimumScaleFactor          = 0.9
        
        lineBreakMode               = .byTruncatingTail // if text too long will add to the tail ...
    }
}
