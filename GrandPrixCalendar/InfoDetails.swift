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
                Text(String().roundToString(round: post.id))
                    .foregroundStyle(.red)
                    .bold()
                    .padding(5)
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
    }
}

#Preview {
    InfoDetails(post: ListOfPosts.posts[0])
}

//var season: Int
//var roundNumber: Int
//var title: String
//var description: String
//var country: Country
//var city: String
//var raceDate: Date?
//var image: Image
