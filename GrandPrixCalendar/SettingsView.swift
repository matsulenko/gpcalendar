//
//  SettingsView.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 04.11.2023.
//

import SwiftUI

enum Themes: String {
    case system = "System", light = "Light", dark = "Dark"
}

struct SettingsView: View {
    
    var themes = ["System", "Light", "Dark"]
    
    @State private var isHideFinished = false
    @State private var isShowingYear = true
    @State private var chosenTheme = "System"
    @State private var secretSetting = 10.0
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Toggle("Hide finished races", isOn: $isHideFinished)
                    Toggle("Show dates with year", isOn: $isShowingYear)
                    Picker("Appearance", selection: $chosenTheme) {
                        ForEach(themes, id: \.self) {
                            Text($0)
                        }
                    }
                }
                Section {
                    Text("Secret setting")
                    Slider(value: $secretSetting, in: 1...10)
                    Text("Your choice is: \(Int(secretSetting))")
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
