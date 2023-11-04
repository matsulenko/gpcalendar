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
        
        switch country {
        case .australia:
            self.image = Image("Australia")
        case .austria:
            self.image = Image("Austria")
        case .azerbaijan:
            self.image = Image("Azerbaijan")
        case .bahrain:
            self.image = Image("Bahrain")
        case .belgium:
            self.image = Image("Belgium")
        case .brazil:
            self.image = Image("Brazil")
        case .canada:
            self.image = Image("Canada")
        case .china:
            self.image = Image("China")
        case .hungary:
            self.image = Image("Hungary")
        case .italy:
            self.image = Image("Italy")
        case .japan:
            self.image = Image("Japan")
        case .mexico:
            self.image = Image("Mexico")
        case .monaco:
            self.image = Image("Monaco")
        case .netherlands:
            self.image = Image("Netherlands")
        case .qatar:
            self.image = Image("Qatar")
        case .saudiArabia:
            self.image = Image("SaudiArabia")
        case .singapore:
            self.image = Image("Singapore")
        case .spain:
            self.image = Image("Spain")
        case .uae:
            self.image = Image("UAE")
        case .uk:
            self.image = Image("UK")
        case .usa:
            self.image = Image("USA")
        }
    }
}
