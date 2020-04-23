//
//  ErrorMessage.swift
//  GitHubFollowers-App
//
//  Created by Kaan on 23.04.2020.
//  Copyright © 2020 Kaan. All rights reserved.
//

import Foundation

enum ErrorMessage: String {
    
    case invalidUsername    = "This username created an invalid request. Please try again."
    case unableToComplete   = "Unable to complete request. Please check the internet connection."
    case invalidResponse    = "Invalid response from the server. Please try again."
    case invalidData        = "The data received from the server was invalid. Please try again."
}
