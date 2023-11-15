//
//  Driver.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 15.11.2023.
//

import Foundation
import SwiftUI

struct Driver: Identifiable {
    var name: String
    var country: Country
    var team: Team
    var id: Int
    var points: Double
    var countryImage: Image
    
    init(name: String, country: Country, team: Team, id: Int, points: Double) {
        self.name = name
        self.country = country
        self.team = team
        self.id = id
        self.points = points
        self.countryImage = Image(country: country)
    }
}
