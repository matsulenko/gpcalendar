//
//  ResultsRow.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 15.11.2023.
//

import SwiftUI

struct ResultsRow: View {
    var driver: Driver
    
    var body: some View {
        HStack {
            Text(String(driver.id) + ".")
                .font(.title)
            VStack {
                HStack {
                    Text(driver.name)
                    driver.countryImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15)
                        .shadow(radius: 5)
                    Spacer()
                }
                HStack {
                    Text(driver.team.rawValue.uppercased())
                        .font(.caption)
                    Spacer()
                }
            }
            Text(String(Int(driver.points)))
                .font(.title)
        }
    }
}

#Preview {
    ResultsRow(driver: DriverChampionship.season2023[0])
}
