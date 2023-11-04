//
//  String.swift
//  GrandPrixCalendar
//
//  Created by Matsulenko on 04.11.2023.
//

import Foundation

extension String {
    func roundToString(round: Int) -> String {
        return ("Round " + String(round) + " of " + String(ListOfPosts.posts.count))
    }
}
