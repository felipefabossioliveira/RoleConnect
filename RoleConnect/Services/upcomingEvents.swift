//
//  upcomingEvents.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 16/04/25.
//

import Foundation

actor UpcomingEventService {
    
    static let shared = UpcomingEventService()
    
    private init() {}
    
    func fetchUpcomingEvents() async throws -> [UpcomingEventModel] {
        guard let url = URL(string: "http://localhost:3000/api/upcomingEvent") else {
            throw URLError(.badURL)
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              (200...299).contains(httpResponse.statusCode) else {
            throw URLError(.badServerResponse)
        }
        
        let decoder = JSONDecoder()
        let upcomingEvents = try decoder.decode([UpcomingEventModel].self, from: data)
        return upcomingEvents
    }
}
