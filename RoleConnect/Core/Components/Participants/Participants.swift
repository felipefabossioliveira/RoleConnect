//
//  Participants.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 15/04/25.
//

import SwiftUI

struct Participants: View {
    
    @EnvironmentObject private var coordinator: AppCoordinator
    
    @State var showJoin = true
    @State var spacing: CGFloat = -16
    @State var height: CGFloat = 40
    @State var circleHeight: CGFloat = 50
    @State var showQuantityJoined: Bool = true
    
    var body: some View {
        HStack(spacing: spacing) {
            Circle()
                .frame(height: circleHeight)
                .overlay {
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(height: height)
                }
                .foregroundStyle(.white)
            
            Circle()
                .frame(height: circleHeight)
                .overlay {
                    Image("profile2")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(height: height)
                }
                .foregroundStyle(.white)
            
            Circle()
                .frame(height: circleHeight)
                .overlay {
                    Image("profile3")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(height: height)
                }
                .foregroundStyle(.white)
            
            Circle()
                .frame(height: circleHeight)
                .overlay {
                    Image("profile4")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(height: height)
                }
                .foregroundStyle(.white)
            
            if showQuantityJoined {
                Circle()
                    .frame(height: circleHeight)
                    .overlay {
                        Circle()
                            .foregroundStyle(.darkPurple)
                            .frame(height: height)
                            .overlay {
                                Text("+8k")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .fontWeight(.bold)
                            }
                    }
                    .foregroundStyle(.white)
            }
            
            if showJoin {
                Spacer()
                
                HStack {
                    Text("Join")
                        .foregroundStyle(.darkPurple)
                        .fontWeight(.bold)
                    
                    Image(systemName: "chevron.right")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 12)
                        .fontWeight(.bold)
                        .foregroundStyle(.darkPurple)
                }
                .onTapGesture {
                    print("Toque detectado")
                    coordinator.push(.detail)
                    print("Push chamado, path agora é: \(coordinator.navigationPath)")
                }
            }
        }
    }
}

#Preview {
    Participants()
        .environmentObject(AppCoordinator())
}
