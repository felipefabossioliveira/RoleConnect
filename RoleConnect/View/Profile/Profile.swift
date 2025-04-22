//
//  Profile.swift
//  ciaitiai
//
//  Created by Felipe Fabossi on 04/04/25.
//

import SwiftUI

struct Profile: View {
    
    @EnvironmentObject private var coordinator: AppCoordinator
    
    var body: some View {
        
        header
        
        GeometryReader { geo in
            
            VStack(spacing:30) {
                
                userInformations
                
                miniDashboardInfo
                
                ScrollView(showsIndicators: false) {
                    
                    VStack(spacing: 40) {
                        
                        accountSettings
                        
                        essentials
                        
                        toolsAndServices
                    }
                }
                
                Spacer()
                
            }
            .navigationBarBackButtonHidden()
            .padding(.horizontal, 30)
            .ignoresSafeArea(edges: .bottom)
        }
    }
    
    @ViewBuilder
    private var header: some View {
        HStack(spacing: 15) {
            Circle()
                .fill(.darkPurple)
                .frame(height: 45)
                .overlay {
                    Image(systemName: "arrow.left")
                        .foregroundStyle(.white)
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
            
            
        }
        .padding(.top, 10)
        .padding(.bottom, 15)
        .padding(.horizontal, 30)
        .onTapGesture {
            withAnimation(.smooth) {
                coordinator.pop()
            }
        }
    }
    
    @ViewBuilder
    private var miniDashboardInfo: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.darkPurple.opacity(0.2))
                .fill(.lightPurple.opacity(0.5))
                .frame(height: 80)
                .overlay {
                    HStack {
                        
                        VStack(spacing: 10) {
                            Text("64")
                                .foregroundStyle(.darkPurple)
                                .fontWeight(.bold)
                            
                            Text("Feedbacks")
                                .font(.caption)
                                .foregroundStyle(.gray)
                                .fontWeight(.bold)
                        }
                        
                        Spacer()
                        
                        VStack(spacing: 10) {
                            Text("102")
                                .foregroundStyle(.darkPurple)
                                .fontWeight(.bold)
                            
                            Text("Joinments")
                                .font(.caption)
                                .foregroundStyle(.gray)
                                .fontWeight(.bold)
                        }
                        
                        Spacer()
                        
                        
                        VStack(spacing: 10) {
                            Text("82")
                                .foregroundStyle(.darkPurple)
                                .fontWeight(.bold)
                            
                            Text("Places Visited")
                                .font(.caption)
                                .foregroundStyle(.gray)
                                .fontWeight(.bold)
                        }
                    }
                    .padding(.horizontal, 25)
                    
                    
                }
        }
    }
    
    @ViewBuilder
    private var accountSettings: some View {
        VStack(alignment: .leading, spacing: 30) {
            
            Text("Account Settings")
                .fontWeight(.bold)
            
            HStack {
                Image(systemName: "person")
                
                Text("Personal Information")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
            }
            
            HStack {
                Image(systemName: "staroflife.shield")
                
                Text("Password & Security")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
            }
            
            HStack {
                Image(systemName: "bell.badge")
                
                Text("Notifications Settings")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
            }
        }
    }
    
    @ViewBuilder
    private var userInformations: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color("darkGray"))
            .frame(height: 90)
            .overlay {
                HStack {
                    Circle()
                        .frame(height: 55)
                        .overlay {
                            Image("profile3")
                                .resizable()
                                .scaledToFill()
                                .clipShape(Circle())
                        }
                    
                    VStack(alignment: .leading) {
                        Text("Felipe Fabossi")
                            .font(.headline)
                            .fontWeight(.heavy)
                            .foregroundStyle(.dark)
                        
                        Text(verbatim: "Americana, SP")
                            .foregroundStyle(.dark.opacity(0.7))
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                    }
                    
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(.darkPurple.opacity(0.4))
                        .fill(.lightPurple)
                        .frame(width: 82, height: 35)
                        .overlay {
                            Text("Edit")
                                .foregroundStyle(.darkPurple)
                                .fontWeight(.bold)
                                .font(.subheadline)
                        }
                }
            }
    }
    
    @ViewBuilder
    private var essentials: some View {
        VStack(alignment: .leading, spacing: 30) {
            
            Text("Essentials")
                .fontWeight(.bold)
            
            HStack {
                Image(systemName: "heart")
                
                Text("My Favorites")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
            }
            
            HStack {
                Image(systemName: "clock.arrow.trianglehead.counterclockwise.rotate.90")
                
                Text("Viewed")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
            }
        }
    }
    
    @ViewBuilder
    private var toolsAndServices: some View {
        VStack(alignment: .leading, spacing: 30) {
            
            Text("Tools & Services")
                .fontWeight(.bold)
            
            HStack {
                Image(systemName: "questionmark.circle")
                
                Text("FAQ")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
            }
            
            HStack {
                Image(systemName: "info.circle")
                
                Text("Help Center")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
            }
        }
    }
    
}

#Preview {
    Profile()
}
