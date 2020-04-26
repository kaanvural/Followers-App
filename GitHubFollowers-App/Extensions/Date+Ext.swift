//
//  Date+Ext.swift
//  GitHubFollowers-App
//
//  Created by Kaan on 25.04.2020.
//  Copyright © 2020 Kaan. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
