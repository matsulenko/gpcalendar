//
//  ContentView.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 03.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            InfoView()
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                        .foregroundColor(.red)
                }
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "hand.wave.fill")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
