//
//  HelloView.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 04.11.2023.
//

import SpriteKit
import SwiftUI

struct ResultsView: View {
    
    var titleOn: Bool
    var rowHeight: Double
    
    var body: some View {
        NavigationView {
            ZStack {
                GeometryReader { geo in
                    SpriteView(scene: ResultsScene(size: geo.size))
                        .frame(width: geo.size.width,
                               height: geo.size.height)
                }
                .ignoresSafeArea(edges: [.top, .leading, .trailing])
                List(DriverChampionship.season2023) { driver in
                label: do {
                    ResultsRow(driver: driver)
                        .background(Color.clear)
                }
                }
                .listStyle(.automatic)
                .scrollContentBackground(.hidden)
                .opacity(0.95)
                
            }
            .navigationTitle(titleOn ? "Drivers championship" : "")

        }
    }
}

#Preview {
    ResultsView(titleOn: true, rowHeight: 50)
}
