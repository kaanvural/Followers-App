//
//  GFBodyLabel.swift
//  GitHubFollowers-App
//
//  Created by Kaan on 23.04.2020.
//  Copyright © 2020 Kaan. All rights reserved.
//

import UIKit

class GFBodyLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(textAlignment: NSTextAlignment) {
        super.init(frame: .zero)
        self.textAlignment  = textAlignment
        configure()
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        font                        = UIFont.preferredFont(forTextStyle: .body)
        textColor                   = .secondaryLabel      //modifies according to light/dark mode
        
        adjustsFontSizeToFitWidth   = true
        minimumScaleFactor          = 0.75
        
        lineBreakMode               = .byWordWrapping
    }

}
