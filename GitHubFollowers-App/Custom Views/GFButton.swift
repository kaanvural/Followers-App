//
//  GFButton.swift
//  GitHubFollowers-App
//
//  Created by Kaan on 23.04.2020.
//  Copyright © 2020 Kaan. All rights reserved.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) { // if you initialize on storyboard
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String){
        super.init(frame: .zero)    // we do assign size later
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius      = 10
        
        titleLabel?.textColor   = .white
        titleLabel?.font        = UIFont.preferredFont(forTextStyle: .headline)
    }
    
}
