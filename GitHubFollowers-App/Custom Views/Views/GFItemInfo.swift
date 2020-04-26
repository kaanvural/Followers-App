//
//  GFItemInfo.swift
//  GitHubFollowers-App
//
//  Created by Kaan on 25.04.2020.
//  Copyright © 2020 Kaan. All rights reserved.
//

import UIKit

enum ItemInfoType {
    case repos, gists, followers, following
}

class GFItemInfoView: UIView {
    
    let symbolImageView = UIImageView()
    let titleLabel      = GFTitleLabel(textAlignment: .left, fontSize: 14)
    let countLabel      = GFTitleLabel(textAlignment: .center, fontSize: 14)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureSymbolImageView()
        configureTitleLabel()
        configureCountLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureSymbolImageView() {
        addSubview(symbolImageView)
        
        symbolImageView.translatesAutoresizingMaskIntoConstraints = false
        symbolImageView.contentMode = .scaleAspectFill
        symbolImageView.tintColor   = .label
        
        NSLayoutConstraint.activate([
            symbolImageView.topAnchor.constraint(equalTo: self.topAnchor),
            symbolImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            symbolImageView.widthAnchor.constraint(equalToConstant: 20),
            symbolImageView.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    func configureTitleLabel() {
        addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: symbolImageView.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: symbolImageView.trailingAnchor, constant: 12),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 18)
            
        ])
    }
    
    func configureCountLabel() {
        addSubview(countLabel)
        
        NSLayoutConstraint.activate([
            countLabel.topAnchor.constraint(equalTo: symbolImageView.bottomAnchor, constant: 4),
            countLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            countLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            countLabel.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
    
    func set(itemInfoType: ItemInfoType, with count: Int) {

        countLabel.text         = String(count)
        
        switch itemInfoType {
        case .repos:
            symbolImageView.image   = UIImage(named: SFSymbols.repos)
            titleLabel.text         = "Public Repos"
        case .gists:
            symbolImageView.image   = UIImage(named: SFSymbols.gists)
            titleLabel.text         = "Public Gists"
        case .followers:
            symbolImageView.image   = UIImage(named: SFSymbols.followers)
            titleLabel.text         = "Followers"
        case .following:
            symbolImageView.image   = UIImage(named: SFSymbols.following)
            titleLabel.text         = "Following"
        }
    }
}
