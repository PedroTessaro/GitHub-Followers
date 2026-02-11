//
//  Date+Ext.swift
//  GitHub_Followers
//
//  Created by Pedro Augusto on 11/02/26.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
