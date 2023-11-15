//
//  InfoRow.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 04.11.2023.
//

import SwiftUI

struct InfoRow: View {
    var post: Post
    
    var body: some View {
        HStack {
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 40, height: 40)
                .padding(.horizontal, 16)
                .shadow(radius: 10)
            
            VStack {
                HStack {
                    Text(String(post.id) + ". " + post.title)
                    Spacer()
                }
                HStack {
                    Text(post.country.rawValue + ", " + post.city)
                        .font(.caption)
                    Spacer()
                }
            }            
        }
    }
}

#Preview {
    InfoRow(post: ListOfPosts.posts[9])
}
