//
//  ListOfPosts.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 04.11.2023.
//

import Foundation
import SwiftUI

class ListOfPosts {
    
    static let posts: [Post] = [
        Post(
            id: 1,
            title: "Bahrain Grand Prix",
            shortName: "Bahrain",
            description: "Bahrain International Circuit",
            country: .bahrain,
            city: "Sakhir",
            raceDate: Date().setDateFromString("02.03.2024")
        ), Post(
            id: 2,
            title: "Saudi Arabian Grand Prix",
            shortName: "Saudi Arabia",
            description: "Jeddah Corniche Circuit",
            country: .saudiArabia,
            city: "Jeddah",
            raceDate: Date().setDateFromString("09.03.2024")
        ), Post(
            id: 3,
            title: "Australian Grand Prix",
            shortName: "Australia",
            description: "Albert Park Circuit",
            country: .australia,
            city: "Melbourne",
            raceDate: Date().setDateFromString("24.03.2024")
        ), Post(
            id: 4,
            title: "Japanese Grand Prix",
            shortName: "Japan",
            description: "Suzuka International Racing Course",
            country: .japan,
            city: "Suzuka",
            raceDate: Date().setDateFromString("07.04.2024")
        ), Post(
            id: 5,
            title: "Chinese Grand Prix",
            shortName: "China",
            description: "Shanghai International Circuit",
            country: .china,
            city: "Shanghai",
            raceDate: Date().setDateFromString("21.04.2024")
        ), Post(
            id: 6,
            title: "Miami Grand Prix",
            shortName: "Miami",
            description: "Miami International Autodrome",
            country: .usa,
            city: "Miami Gardens, Florida",
            raceDate: Date().setDateFromString("05.05.2024")
        ), Post(
            id: 7,
            title: "Emilia Romagna Grand Prix",
            shortName: "Emilia Romagna",
            description: "Imola Circuit",
            country: .italy,
            city: "Imola",
            raceDate: Date().setDateFromString("19.05.2024")
        ), Post(
            id: 8,
            title: "Monaco Grand Prix",
            shortName: "Monaco",
            description: "Circuit de Monaco",
            country: .monaco,
            city: "Monaco",
            raceDate: Date().setDateFromString("26.05.2024")
        ), Post(
            id: 9,
            title: "Canadian Grand Prix",
            shortName: "Canada",
            description: "Circuit Gilles Villeneuve",
            country: .canada,
            city: "Montreal",
            raceDate: Date().setDateFromString("09.06.2024")
        ), Post(
            id: 10,
            title: "Spanish Grand Prix",
            shortName: "Spain",
            description: "Circuit de Barcelona-Catalunya",
            country: .spain,
            city: "Montmeló",
            raceDate: Date().setDateFromString("23.06.2024")
        ), Post(
            id: 11,
            title: "Austrian Grand Prix",
            shortName: "Austria",
            description: "Red Bull Ring",
            country: .austria,
            city: "Spielberg",
            raceDate: Date().setDateFromString("30.06.2024")
        ), Post(
            id: 12,
            title: "British Grand Prix",
            shortName: "Great Britain",
            description: "Silverstone Circuit",
            country: .uk,
            city: "Silverstone",
            raceDate: Date().setDateFromString("07.07.2024")
        ), Post(
            id: 13,
            title: "Hungarian Grand Prix",
            shortName: "Hungary",
            description: "Hungaroring",
            country: .hungary,
            city: "Mogyoród",
            raceDate: Date().setDateFromString("21.07.2024")
        ), Post(
            id: 14,
            title: "Belgian Grand Prix",
            shortName: "Belgium",
            description: "Circuit de Spa-Francorchamps",
            country: .belgium,
            city: "Stavelot",
            raceDate: Date().setDateFromString("28.07.2024")
        ), Post(
            id: 15,
            title: "Dutch Grand Prix",
            shortName: "Netherlands",
            description: "Circuit Zandvoort",
            country: .netherlands,
            city: "Zandvoort",
            raceDate: Date().setDateFromString("25.08.2024")
        ), Post(
            id: 16,
            title: "Italian Grand Prix",
            shortName: "Italy",
            description: "Monza Circuit",
            country: .italy,
            city: "Monza",
            raceDate: Date().setDateFromString("01.09.2024")
        ), Post(
            id: 17,
            title: "Azerbaijan Grand Prix",
            shortName: "Azerbaijan",
            description: "Baku City Circuit",
            country: .azerbaijan,
            city: "Baku",
            raceDate: Date().setDateFromString("15.09.2024")
        ), Post(
            id: 18,
            title: "Singapore Grand Prix",
            shortName: "Singapore",
            description: "Marina Bay Street Circuit",
            country: .singapore,
            city: "Singapore",
            raceDate: Date().setDateFromString("22.09.2024")
        ), Post(
            id: 19,
            title: "United States Grand Prix",
            shortName: "USA",
            description: "Circuit of the Americas",
            country: .usa,
            city: "Austin, Texas",
            raceDate: Date().setDateFromString("20.10.2024")
        ), Post(
            id: 20,
            title: "Mexico City Grand Prix",
            shortName: "Mexico",
            description: "Autódromo Hermanos Rodríguez",
            country: .mexico,
            city: "Mexico City",
            raceDate: Date().setDateFromString("27.10.2024")
        ), Post(
            id: 21,
            title: "São Paulo Grand Prix",
            shortName: "Brazil",
            description: "Interlagos Circuit",
            country: .brazil,
            city: "São Paulo",
            raceDate: Date().setDateFromString("03.11.2024")
        ), Post(
            id: 22,
            title: "Las Vegas Grand Prix",
            shortName: "Las Vegas",
            description: "Las Vegas Strip Circuit",
            country: .usa,
            city: "Paradise, Nevada",
            raceDate: Date().setDateFromString("23.11.2024")
        ), Post(
            id: 23,
            title: "Qatar Grand Prix",
            shortName: "Qatar",
            description: "Lusail International Circuit",
            country: .qatar,
            city: "Lusail",
            raceDate: Date().setDateFromString("01.12.2024")
        ), Post(
            id: 24,
            title: "Abu Dhabi Grand Prix",
            shortName: "Abu Dhabi",
            description: "Yas Marina Circuit",
            country: .uae,
            city: "Abu Dhabi",
            raceDate: Date().setDateFromString("08.12.2024")
        )
    ]
    
}
