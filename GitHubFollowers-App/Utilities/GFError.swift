//
//  GFError.swift
//  GitHubFollowers-App
//
//  Created by Kaan on 24.04.2020.
//  Copyright © 2020 Kaan. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    
    case invalidUsername    = "This username created an invalid request. Please try again."
    case unableToComplete   = "Unable to complete request. Please check the internet connection."
    case invalidResponse    = "Invalid response from the server. Please try again."
    case invalidData        = "The data received from the server was invalid. Please try again."
    case unableToFavorite   = "There was an error favoriting this user.Please try again."
    case alreadyInFavorites = "You have already favorited this user."
}
