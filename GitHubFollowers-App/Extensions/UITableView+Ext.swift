//
//  UITableView+Ext.swift
//  GitHubFollowers-App
//
//  Created by Kaan on 26.04.2020.
//  Copyright © 2020 Kaan. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
