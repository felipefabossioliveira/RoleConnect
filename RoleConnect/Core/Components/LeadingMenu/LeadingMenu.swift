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
    
    @Environment(\.isNetworkConnected) private var isConnected
    @Environment(\.connectionType) private var connectionType
    
    var body: some View {
        ZStack {
            if isOpen {
                Color.black.opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        isOpen = false
                    }
                    .zIndex(0)
            }
            
            GeometryReader { geo in
                VStack(alignment: .leading, spacing: 30) {
                    menuProfileHeader
                    ScrollView(showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 30) {
                            
                            
                            menuProfileOptions
                            
                            menuNotificationsOptions
                            
                            menuAccountAndSecurityOptions
                            
                            menuSupportOptions
                            
                            internetConnection
                        }
                    }
                }
                .padding(.top, 20)
                .padding(.bottom, 10)
                .padding(.horizontal)
                .padding(.trailing, 12)
                .frame(width: 280, height: .infinity)
                .background(.black)
                .zIndex(2)
                
            }
        }
    }
    
    @ViewBuilder
    private var internetConnection: some View {
        VStack (alignment: .leading, spacing: 20){
            
            Text("Connection")
                .foregroundStyle(.gray)
            
            HStack {
                Image(systemName: (isConnected ?? false) ? "wifi" : "wifi.slash")
                    .foregroundStyle((isConnected ?? false) ? .greenStatus : .red)
                Text((isConnected ?? false) ? "Connected" : "No Internet")
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                    .font(.subheadline)
                
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
                        .frame(width: 11, height: 11)
                        .offset(x: -12)
                        .foregroundStyle(.white)
                        .overlay {
                            Circle()
                                .frame(width: 9, height: 9)
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
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                    
                }
                .offset(x: -11)
                
                Spacer()
                
                
                Image(systemName: "chevron.right")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
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
                    .foregroundStyle(Color.yellow)
                
                Text("Favorites")
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
                    .font(.subheadline)
                
            }
            
            HStack {
                Image(systemName: "wallet.pass")
                    .foregroundStyle(.mediumGray)
                
                Text("Expenses")
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
                    .font(.subheadline)
            }
            
            HStack {
                Image(systemName: "wallet.bifold")
                    .foregroundStyle(.brown)
                
                Text("Wallet")
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
                    .font(.subheadline)
            }
            .onTapGesture {
                coordinator.push(.wallet)
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
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
                    .font(.subheadline)
                
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
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 20)
                    .foregroundStyle(.mediumGray)
                
                Text("Notifications")
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
                    .font(.subheadline)
                
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
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
                    .font(.subheadline)
                
            }
            
            HStack {
                Image(systemName: "lifepreserver")
                    .frame(height: 19)
                    .foregroundStyle(Color.blue)
                
                Text("Help")
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
                    .font(.subheadline)
                
            }
            
            HStack {
                Image(systemName: "gearshape.2")
                    .frame(height: 19)
                    .foregroundStyle(.gray)
                
                Text("Settings")
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
                    .font(.subheadline)
                
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
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
                    .font(.subheadline)
                
            }
            
            HStack {
                Image(systemName: "globe.americas.fill")
                    .foregroundStyle(.blue)
                
                Text("Language")
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
                    .font(.subheadline)
                
            }
            
            HStack {
                Image(systemName: "ellipsis.rectangle")
                    .foregroundStyle(.mediumGray)
                
                Text("Change Password")
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
                    .font(.subheadline)
                
            }
            
        }
    }
}

#Preview {
    LeadingMenu(isOpen: .constant(false))
}
