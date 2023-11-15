//
//  countryToFlag.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 15.11.2023.
//

import Foundation
import SwiftUI

extension Image {
    init(country: Country) {
        switch country {
        case .australia:
            self = Image("Australia")
        case .austria:
            self = Image("Austria")
        case .azerbaijan:
            self = Image("Azerbaijan")
        case .bahrain:
            self = Image("Bahrain")
        case .belgium:
            self = Image("Belgium")
        case .brazil:
            self = Image("Brazil")
        case .canada:
            self = Image("Canada")
        case .china:
            self = Image("China")
        case .hungary:
            self = Image("Hungary")
        case .italy:
            self = Image("Italy")
        case .japan:
            self = Image("Japan")
        case .mexico:
            self = Image("Mexico")
        case .monaco:
            self = Image("Monaco")
        case .netherlands:
            self = Image("Netherlands")
        case .qatar:
            self = Image("Qatar")
        case .saudiArabia:
            self = Image("SaudiArabia")
        case .singapore:
            self = Image("Singapore")
        case .spain:
            self = Image("Spain")
        case .uae:
            self = Image("UAE")
        case .uk:
            self = Image("UK")
        case .usa:
            self = Image("USA")
        case .denmark:
            self = Image("Denmark")
        case .finland:
            self = Image("Finland")
        case .france:
            self = Image("France")
        case .germany:
            self = Image("Germany")
        case .newZealand:
            self = Image("NewZealand")
        case .thailand:
            self = Image("Thailand")
        }
    }
}
