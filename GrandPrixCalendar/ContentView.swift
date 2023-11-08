//
//  ContentView.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 03.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("titleOn") var titleOn: Bool = true
    @AppStorage("rowHeight") var rowHeight: Double = 50.0
    
    var body: some View {
        TabView {
            InfoView(titleOn: titleOn, rowHeight: rowHeight)
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                        .foregroundColor(.red)
                }
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "hand.wave.fill")
                }
            SettingsView(titleOn: $titleOn, rowHeight: $rowHeight)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
