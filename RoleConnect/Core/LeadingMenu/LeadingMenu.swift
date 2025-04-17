//
//  LeadingMenu.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 17/04/25.
//

import SwiftUI

struct LeadingMenu: View {
    
    @Binding var isOpen: Bool
    
    var body: some View {
        ZStack {
            if isOpen {
                Color.black.opacity(0.3)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        isOpen = false
                    }
                    .zIndex(0)
            }
            
            GeometryReader { geo in
                VStack(alignment: .leading, spacing: 40) {
                    
                    menuHeader
                    
                    menuNotifications
                    
                    menuAccountAndSecurity
                    
                    menuOthers
                    
                    Spacer()
                }
                .padding(.top, 60)
                .padding(.horizontal)
                .frame(width: 280, height: geo.size.height)
                .background(.white)
                .zIndex(2)
            }
        }
    }
    
    //    @ViewBuilder
    //    private var menuShortcuts: some View {
    //
    //    }
    

    @ViewBuilder
    private var menuOthers: some View {
        VStack(alignment: .leading, spacing: 30) {
            
            Text("Other")
                .foregroundStyle(.greyish)
                .font(.title3)
                .fontWeight(.bold)
            
            VStack {
                HStack(spacing: 15) {
                    Image(systemName: "questionmark.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 23)
                        .fontWeight(.regular)
                        .foregroundStyle(.dark)
                    
                    Text("Help")
                        .foregroundStyle(.black)
                }
                .fontWeight(.semibold)
            }
            
            VStack {
                HStack(spacing: 15) {
                    Image(systemName: "gearshape")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 23)
                        .fontWeight(.regular)
                    
                    Text("Settings")
                        .foregroundStyle(.black)
                }
                .fontWeight(.semibold)
            }
        }
    }
    
    @ViewBuilder
    private var menuNotifications: some View {
        VStack(alignment: .leading, spacing: 30) {
            
            Text("Notifications")
                .foregroundStyle(.greyish)
                .font(.title3)
                .fontWeight(.bold)
            
            VStack {
                HStack(spacing: 15) {
                    Image("bell")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 23)
                        .colorInvert()
                    
                    Text("Notifications")
                        .foregroundStyle(.black)
                }
                .fontWeight(.semibold)
            }
        }
    }
    
    @ViewBuilder
    private var menuAccountAndSecurity: some View {
        VStack(alignment: .leading, spacing: 30) {
            
            Text("Account & Security")
                .foregroundStyle(.greyish)
                .font(.title3)
                .fontWeight(.bold)
            
            VStack {
                
                HStack(spacing: 15) {
                    Image("profileMock")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 25)
                        .colorInvert()
                    
                    Text("Profile")
                        .foregroundStyle(.black)
                }
                .fontWeight(.semibold)
            }
            
            VStack {
                HStack(spacing: 15) {
                    Image("translate")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 25)
                        .colorInvert()
                    
                    Text("Language")
                        .foregroundStyle(.black)
                }
                .fontWeight(.semibold)
            }
        }
    }
    
    @ViewBuilder
    private var menuHeader: some View {
        HStack {
            Text("Main Menu")
                .foregroundStyle(.dark)
                .font(.title2)
                .fontWeight(.semibold)
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 10)
                .stroke(.gray.opacity(0.2))
                .fill(.clear)
                .frame(width: 40, height: 40)
                .overlay {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.dark)
                        .fontWeight(.semibold)
                }
        }
        .padding(.top, 20)
    }
}

#Preview {
    LeadingMenu(isOpen: .constant(false))
}
