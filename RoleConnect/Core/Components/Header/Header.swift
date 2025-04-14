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
                Image("menu")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                    .rotationEffect(Angle(degrees: 180))
                
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
