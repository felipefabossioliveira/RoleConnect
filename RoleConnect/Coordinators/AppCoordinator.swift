//
//  AppCoordinator.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 16/04/25.
//

import Foundation
import SwiftUI

class AppCoordinator: ObservableObject {
    
    @Published var navigationPath = NavigationPath()
    
    enum Route: Hashable {
        case home
        case detail
        case profile
        case wallet
    }
    
    func push(_ route: Route) {
        navigationPath.append(route)
    }
    
    func pop() {
        navigationPath.removeLast()
    }
    
    @ViewBuilder
    func build(route: Route) -> some View {
        
        switch route {
            
        case .home: Home()
            
        case .detail: UpcomingEventDetail()
            
        case .profile: Profile()
            
        case .wallet: Wallet()
            
        }
    }
}
