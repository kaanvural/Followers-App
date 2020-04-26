//
//  Follower.swift
//  GitHubFollowers-App
//
//  Created by Kaan on 23.04.2020.
//  Copyright © 2020 Kaan. All rights reserved.
//

import Foundation

struct Follower: Codable, Hashable {      //properties need to be match perfectly as we use Codable
    
    var login: String                    //not optional because we know these are gonna return
    var avatarUrl: String               //camelCase will be formatted to snake case with using JSONDecoder().keyDecodingStrategy
    
    
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(login)
//    }
    
}
