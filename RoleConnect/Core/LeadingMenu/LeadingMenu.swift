//
//  LeadingMenu.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 17/04/25.
//

import SwiftUI

struct LeadingMenu: View {
    
    @Binding var isOpen: Bool
    
    @EnvironmentObject private var coordinator: AppCoordinator

    
    var body: some View {
        ZStack {
            if isOpen {
                Color.white.opacity(0.3)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        isOpen = false
                    }
                    .zIndex(0)
            }
            
            GeometryReader { geo in
                VStack(alignment: .leading, spacing: 40) {
                    
                    menuProfileHeader
                    
                    menuProfileOptions
                    
                    menuNotificationsOptions
                    
                    menuAccountAndSecurityOptions
                    
                    menuSupportOptions
                    
                    Spacer()
                }
                .padding(.top, 85)
                .padding(.horizontal)
                .frame(width: 280, height: .infinity)
                .background(Color.white)
                .zIndex(2)
                
            }
        }
    }
    
    @ViewBuilder
    private var menuProfileHeader: some View {
        VStack {
            HStack {
                HStack(alignment: .lastTextBaseline, spacing: 0) {
                    Circle()
                        .frame(width: 45, height: 45)
                        .foregroundStyle(.gray.opacity(0.2))
                        .overlay {
                            Image("profile3")
                                .resizable()
                                .scaledToFill()
                                .clipShape(Circle())
                                .frame(width: 40, height: 40)
                        }
                    
                    Circle()
                        .frame(width: 14, height: 14)
                        .offset(x: -12)
                        .foregroundStyle(.white)
                        .overlay {
                            Circle()
                                .frame(width: 11, height: 11)
                                .foregroundStyle(.greenStatus)
                                .offset(x: -12)
                        }
                }
                
                
                VStack(alignment: .leading) {
                    Text("Good Morning,")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                        .fontWeight(.semibold)
                    
                    Text(verbatim: "Felipe Fabossi")
                        .foregroundStyle(.dark)
                        .fontWeight(.bold)
                    
                }
                .offset(x: -11)
                
                Spacer()
                
                
                Image(systemName: "chevron.right")
                    .font(.title3)
                    .fontWeight(.bold)
                
            }
        }
        .onTapGesture {
            coordinator.push(.profile)
        }
    }
    
    @ViewBuilder
    private var menuProfileOptions: some View {
        VStack (alignment: .leading, spacing: 20){
            
            Text("Personal")
                .foregroundStyle(.gray)
            
            HStack {
                Image(systemName: "bookmark")
                    .foregroundStyle(.mediumGray)
                
                Text("Favorites")
                    .foregroundStyle(.dark)
                    .fontWeight(.medium)
            }
            
            HStack {
                Image(systemName: "wallet.pass")
                    .frame(height: 19)
                    .foregroundStyle(.mediumGray)
                
                Text("Expenses")
                    .foregroundStyle(.dark)
                    .fontWeight(.medium)
            }
        }
    }
    
    @ViewBuilder
    private var menuNotificationsOptions: some View {
        VStack (alignment: .leading, spacing: 20){
            
            Text("Messages")
                .foregroundStyle(.gray)
            
            HStack {
                Image(systemName: "envelope.badge")
                    .foregroundStyle(.mediumGray)
                
                Text("Inbox")
                    .foregroundStyle(.dark)
                    .fontWeight(.medium)
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 8)
                    .fill(.darkPurple)
                    .frame(maxWidth: 23)
                    .frame(height: 23)
                    .overlay {
                        Text("5")
                            .font(.caption)
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                    }
            }
            
            HStack {
                Image(systemName: "bell.badge")
                    .frame(height: 19)
                    .foregroundStyle(.mediumGray)
                
                Text("Notifications")
                    .foregroundStyle(.dark)
                    .fontWeight(.medium)
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 8)
                    .fill(.darkPurple)
                    .frame(maxWidth: 23)
                    .frame(height: 23)
                    .overlay {
                        Text("2")
                            .font(.caption)
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                    }
            }
        }
    }
    
    @ViewBuilder
    private var menuSupportOptions: some View {
        VStack (alignment: .leading, spacing: 20){
            
            // Title
            
            Text("Support")
                .foregroundStyle(.gray)
            
            HStack {
                Image(systemName: "message")
                    .foregroundStyle(.mediumGray)
                
                Text("Feedback")
                    .foregroundStyle(.dark)
                    .fontWeight(.medium)
            }
            
            HStack {
                Image(systemName: "lifepreserver")
                    .frame(height: 19)
                    .foregroundStyle(.mediumGray)
                
                Text("Help")
                    .foregroundStyle(.dark)
                    .fontWeight(.medium)
            }
            
            HStack {
                Image(systemName: "gearshape.2")
                    .frame(height: 19)
                    .foregroundStyle(.mediumGray)
                
                Text("Settings")
                    .foregroundStyle(.dark)
                    .fontWeight(.medium)
            }
        }
    }
    
    @ViewBuilder
    private var menuAccountAndSecurityOptions: some View {
        VStack (alignment: .leading, spacing: 20){
            
            // Title
            
            Text("Account & Security")
                .foregroundStyle(.gray)
            
            HStack {
                Image(systemName: "person.crop.square")
                    .foregroundStyle(.mediumGray)
                
                Text("Update Profile")
                    .foregroundStyle(.dark)
                    .fontWeight(.medium)
            }
            
            HStack {
                Image(systemName: "globe")
                    .foregroundStyle(.mediumGray)
                
                Text("Language")
                    .foregroundStyle(.dark)
                    .fontWeight(.medium)
            }
            
            HStack {
                Image(systemName: "ellipsis.rectangle")
                    .foregroundStyle(.mediumGray)
                
                Text("Change Password")
                    .foregroundStyle(.dark)
                    .fontWeight(.medium)
            }
            
        }
    }
}

#Preview {
    LeadingMenu(isOpen: .constant(false))
}
