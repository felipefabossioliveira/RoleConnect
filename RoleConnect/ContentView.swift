//
//  ContentView.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 11/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var coordinator: AppCoordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.navigationPath) {
            coordinator.build(route: .home)
                .navigationDestination(for: AppCoordinator.Route.self) { route in
                    coordinator.build(route: route)
                }
                .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AppCoordinator())
}
