//
//  SettingsView.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 04.11.2023.
//

import SwiftUI

struct SettingsView: View {
        
    @Environment(\.colorScheme) var colorScheme
    
    @Binding var titleOn: Bool
    @Binding var rowHeight: Double
    
    @State private var isHideFinished = false
    @State private var isShowingYear = true
    @State private var isChanging = false
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        switch colorScheme {
                        case .light:
                            Text("Light Theme enabled")
                        case .dark:
                            Text("Dark Theme enabled")
                        @unknown default:
                            Text("It is impossible to define a color scheme")
                        }
                    }
                    Section {
                        Toggle("Enable navigation title", isOn: $titleOn)
                        if titleOn {
                            Text("Navigation title enabled")
                        }
                    }
                    Section {
                        Text("Row height: \(Int(rowHeight))")
                        Slider(value: $rowHeight, in: 40...80, step: 1) { changing in
                            isChanging = changing
                        }
                    }
                    Section {
                        if isChanging {
                            let randomRound = Int.random(in: 1...21)
                            InfoRow(post: ListOfPosts.posts[randomRound])
                                .frame(height: rowHeight)
                                .padding(0)
                        }
                    }
                    .padding(0)
                    .frame(height: rowHeight)
                }
            }
            .navigationTitle(titleOn ? "Settings" : "")
        }
    }
}

#Preview {
    SettingsView(titleOn: .constant(true), rowHeight: .constant(50.0))
}
