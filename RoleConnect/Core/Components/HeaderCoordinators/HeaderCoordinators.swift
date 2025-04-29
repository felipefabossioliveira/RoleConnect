//
//  HeaderCoordinators.swift
//  RoleConnect
//
//  Created by fabossif on 29/04/25.
//

import SwiftUI

struct HeaderCoordinators: View {
    
    @EnvironmentObject private var coordinator: AppCoordinator
    
    var body: some View {
        HStack(spacing: 15) {
            Circle()
                .fill(.dark)
                .frame(height: 45)
                .overlay {
                    Image(systemName: "arrow.left")
                        .foregroundStyle(.white)
                }
            
            Spacer()
            
            HStack {
                Text("Rolê")
                
                Circle()
                    .fill(.gray)
                    .frame(height: 7)
                
                Text("Connect")
            }
            .fontWeight(.heavy)
            
            
        }
        .padding(.bottom, 15)
        .onTapGesture {
            coordinator.pop()
        }
    }
}

#Preview {
    HeaderCoordinators()
}
