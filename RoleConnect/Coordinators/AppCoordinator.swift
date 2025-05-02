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
        case carPool
        case socialLogin
    }
    
    func push(_ route: Route) {
        navigationPath.append(route)
    }
    
    func canPop() -> Bool {
        return !navigationPath.isEmpty
    }
    
    func pop() {
        if canPop() {
            navigationPath.removeLast()
        }
    }
    
    func popToRoot() {
        push(.home)
    }
    
    @ViewBuilder
    func build(route: Route) -> some View {
        
        switch route {
            
        case .home: Home()
            
        case .detail: UpcomingEventDetail()
            
        case .profile: Profile()
            
        case .wallet: Wallet()
            
        case .carPool: Carpool()
            
        case .socialLogin: SocialLoginView()
            
        }
    }
}
