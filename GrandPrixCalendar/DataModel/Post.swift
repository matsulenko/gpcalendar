//
//  Post.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 04.11.2023.
//

import Foundation
import SwiftUI

struct Post: Identifiable {
    var season: Int
    var id: Int
    var title: String
    var shortName: String
    var description: String
    var country: Country
    var city: String
    var raceDate: Date?
    var image: Image
    
    init(season: Int = 2024, id: Int, title: String, shortName: String, description: String, country: Country, city: String, raceDate: Date?) {
        self.season = season
        self.id = id
        self.title = title
        self.shortName = shortName
        self.description = description
        self.country = country
        self.city = city
        self.raceDate = raceDate
        self.image = Image(country: country)
    }
}
