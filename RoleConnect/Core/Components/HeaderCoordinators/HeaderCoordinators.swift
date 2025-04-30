//
//  HeaderCoordinators.swift
//  RoleConnect
//
//  Created by fabossif on 29/04/25.
//

import SwiftUI

struct HeaderCoordinators: View {
    
    @EnvironmentObject private var coordinator: AppCoordinator
    
    @State var headerTitle: String = ""
    
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
            
            Text(headerTitle)
                .foregroundStyle(.white)
                .fontWeight(.bold)
            
            Spacer()
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(height: 20)
                .foregroundStyle(.redlogo)
            
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
