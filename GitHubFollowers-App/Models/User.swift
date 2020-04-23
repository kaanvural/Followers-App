//
//  User.swift
//  GitHubFollowers-App
//
//  Created by Kaan on 23.04.2020.
//  Copyright © 2020 Kaan. All rights reserved.
//

import Foundation

struct User: Codable {
    
    var login: String
    var avatarUrl: String
    var name: String?       //may return null
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var followers: Int
    var followings: Int
    var createdAt: String
    
}
