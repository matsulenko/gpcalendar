//
//  Date.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 04.11.2023.
//

import Foundation

extension Date {
    func setDateFromString(_ dateString: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        
        return dateFormatter.date(from: dateString)
    }
    
    func stringFromDate(_ date: Date?) -> String {
        guard let date else { return "" }
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.dateFormat = "MMMM dd, yyyy"
        
        return dateFormatter.string(from: date)
    }
}
