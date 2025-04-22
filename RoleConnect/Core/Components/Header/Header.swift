//
//  Header.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 09/04/25.
//

import SwiftUI

struct Header: View {
    
    @Binding var isMenuOpen: Bool
    
    @EnvironmentObject private var coordinator: AppCoordinator
    
    var body: some View {
        
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 10)
//                    .stroke(.gray.opacity(0.2))
                    .fill(.clear)
                    .overlay(alignment:.center) {
                        Image("menu")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 35)
                            .rotationEffect(Angle(degrees: 180))
                    }
                    .frame(width: 45, height: 45)
                    .onTapGesture {
                        isMenuOpen.toggle()
                    }
                
                Spacer()
                
                HStack {
                    Text("Rolê")
                    
                    Circle()
                        .fill(.darkPurple)
                        .frame(height: 12)
                    
                    Text("Connect")
                }
                .fontWeight(.heavy)
                
                Spacer()
                
                HStack {
                    Circle()
                        .fill(.clear)
                        .frame(width: 40, height: 40)
                        .overlay {
                            Image("profile4")
                                .resizable()
                                .scaledToFill()
                                .clipShape(.circle)
                                .frame(height: 35)
                            
                        }
                }
                .onTapGesture {
                    coordinator.push(.profile)
                }
            }
        }
        .padding()
    }
}

#Preview {
    Header(isMenuOpen: .constant(false))
    
}
