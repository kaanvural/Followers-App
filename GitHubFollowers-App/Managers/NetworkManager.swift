//
//  NetworkManager.swift
//  GitHubFollowers-App
//
//  Created by Kaan on 23.04.2020.
//  Copyright © 2020 Kaan. All rights reserved.
//

import Foundation

class NetworkManager {      //singleton
    
    static let shared   = NetworkManager()
    let baseURL         = "https://api.github.com/users/"
    
    private init() {        //private cause of singleton
        
    }
    
    func getFollowers(for username: String, page: Int, completed: @escaping([Follower]?, ErrorMessage?) -> Void) {      //pagination
        
        let endpoint = baseURL + username + "/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {        //going on background thread
            completed(nil, .invalidUsername)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let _ = error {
                completed(nil, .unableToComplete)
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, .invalidResponse)
                return
            }
            
            guard let data = data else {
                completed(nil, .invalidData)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            } catch {
                completed(nil, .invalidData)
            }
            
        }
        
        task.resume()
    }
    
}
