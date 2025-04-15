//
//  Header.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 09/04/25.
//

import SwiftUI

struct Header: View {
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.gray.opacity(0.1))
                    .overlay(alignment:.center) {
                        Image("menu")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 35)
                            .rotationEffect(Angle(degrees: 180))
                    }
                    .frame(width: 45, height: 45)
                
                Spacer()
                
                HStack {
                    Text("Role")
                    
                    Circle()
                        .fill(.darkBlue)
                        .frame(height: 12)
                    
                    Text("Connect")
                }
                .fontWeight(.heavy)
//                .font(.)
                
                
                
                Spacer()
                
                HStack {
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundStyle(.gray.opacity(0.2))
                        .overlay {
                            Image("profile")
                                .resizable()
                                .scaledToFill()
                                .clipShape(.circle)
                        }
                }
            }
        }
        .padding()
    }
}

#Preview {
    Header()
    
}
