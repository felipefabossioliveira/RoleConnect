//
//  Participants.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 15/04/25.
//

import SwiftUI

struct Participants: View {
    
    @State var showJoin = true
    @State var spacing: CGFloat = -16
    @State var height: CGFloat = 40
    @State var circleHeight: CGFloat = 50
    
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
                    Circle()
                        .foregroundStyle(.dark)
                        .frame(height: height)
                        .overlay {
                            Text("+8k")
                                .font(.caption)
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                        }
                }
                .foregroundStyle(.white)
            
            if showJoin {
                Spacer()
                
                HStack {
                    Text("Join")
                        .foregroundStyle(.darkBlue)
                        .fontWeight(.bold)
                    
                    Image(systemName: "chevron.right")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 12)
                        .fontWeight(.bold)
                }
            }
        }
    }
}

#Preview {
    Participants()
}
