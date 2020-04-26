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
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(textAlignment: NSTextAlignment) {
        self.init(frame: .zero)
        self.textAlignment  = textAlignment
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
