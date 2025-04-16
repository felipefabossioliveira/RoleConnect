//
//  upcomingEvent].swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 16/04/25.
//

import Foundation

struct UpcomingEventModel: Identifiable, Equatable, Codable {
    var id: String
    let name: String
    let image: String
    let value: CGFloat
    let date: String
    let time: String
}

