//
//  Date+ext.swift
//  GitFollowers
//
//  Created by Didar Naurzbayev on 2/3/20.
//  Copyright © 2020 Didar Naurzbayev. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
