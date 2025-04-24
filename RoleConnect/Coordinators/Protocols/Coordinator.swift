//
//  Coordinator.swift
//  EasyBudget
//
//  Created by Felipe Fabossi on 16/04/25.
//

import SwiftUI

protocol Coordinator: ObservableObject {
    
    associatedtype Route
    
    var navigationPath: NavigationPath { get set }
    
    func push(_ route: Route)
    func pop()
    func popToRoot()
}

extension Coordinator {
    func pop() {
        navigationPath.removeLast()
    }
    
    func popToRoot() {
        navigationPath.removeLast(navigationPath.count)
    }
}
