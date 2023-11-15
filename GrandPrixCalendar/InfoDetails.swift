//
//  InfoDetails.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 04.11.2023.
//

import SwiftUI

struct InfoDetails: View {
    var post: Post
    
    var body: some View {
        ScrollView {
            VStack {
                Text(post.shortName + " " + String(post.season))
                    .font(.title).fontWeight(.bold)
                post.image
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 10)
                    .padding(20)
                    .frame(maxWidth: 500)
                
                Text(post.title)
                    .font(.title2).fontWeight(.bold)
                    .foregroundStyle(.red)
                
                    .padding()
                
                Text(post.country.rawValue + ", " + post.city)
                
                Text(post.description)
                
                Text(Date().stringFromDate(post.raceDate))
                    .foregroundStyle(.red)
                    .bold()
                    .padding()
            }
            .padding()
        }
        .navigationTitle(String().roundToString(round: post.id))
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    InfoDetails(post: ListOfPosts.posts[0])
}
