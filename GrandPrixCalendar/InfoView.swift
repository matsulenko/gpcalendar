//
//  InfoView.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 04.11.2023.
//

import SwiftUI

struct InfoView: View {
    
    var titleOn: Bool
    var rowHeight: Double
    
    var body: some View {
        NavigationView {
            List(ListOfPosts.posts) { post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post)
                }
                .frame(height: rowHeight)
                .ignoresSafeArea()
            }
            .navigationTitle(titleOn ? "F1 2024 calendar" : "")
            .listStyle(.plain)
        }
    }
}

#Preview {
    InfoView(titleOn: true, rowHeight: 50.0)
}
