//
//  RoleConnectApp.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 11/04/25.
//

import SwiftUI

@main struct RoleConnectApp: App {
    
    @StateObject private var coordinator = AppCoordinator()
    @StateObject private var networkMonitor = NetworkMonitor()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(coordinator)
                .environment(\.isNetworkConnected, networkMonitor.isConnected)
                .environment(\.connectionType, networkMonitor.connectionType)
                .preferredColorScheme(.dark)
        }
    }
}
