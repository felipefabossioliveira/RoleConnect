//
//  EventListViewModel.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 16/04/25.
//

import Foundation

@MainActor
class UpcomingEventViewModel: ObservableObject {
    
    @Published var upcomingEventList: [UpcomingEventModel] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    func fetchUpcomingEvents () {
        isLoading = true
        errorMessage = nil
        
        Task {
            do {
                upcomingEventList = try await UpcomingEventService.shared.fetchUpcomingEvents()
            } catch {
                errorMessage = error.localizedDescription
                print("Error: \(String(describing: errorMessage))")
            }
            
            isLoading = false
        }
    }
}
