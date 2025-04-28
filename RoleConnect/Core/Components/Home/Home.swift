//
//  Home.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 11/04/25.
//

import SwiftUI

struct Home: View {
    
    @StateObject private var homeVM = HomeViewModel()
    @StateObject private var eventListVM = UpcomingEventViewModel()
    
    @State private var viewDetail: Bool = false
    
    @Environment(\.isNetworkConnected) private var isConnected
    
    @State private var isMenuOpen = false
    
    var body: some View {
        ZStack {
            
            VStack {
                
                Header(isMenuOpen: $isMenuOpen)
                
                ScrollView(showsIndicators: false) {
                    
                    HStack {
                        Text("Upcoming Event")
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .padding(.bottom, 10)
                        
                        Spacer()
                        
                        Text("View more")
                            .foregroundStyle(.gray)
                            .fontWeight(.semibold)
                            .font(.subheadline)
                            .onTapGesture {
                                viewDetail.toggle()
                            }
                            .sheet(isPresented: $viewDetail) {
                                ViewMoreEvents()
                            }
                        
                    }
                    .padding(.horizontal)
                    .padding(.top, 10)
                    
                    UpcomingEventList()
                        .padding(.leading)
                    
                    PopularEvent
                        .padding(.top, 20)
                    
                    Spacer()
                }
            }
            .blur(radius: isMenuOpen ? 5 : 0)
            .animation(.easeInOut, value: isMenuOpen)
            
            LeadingMenu(isOpen: $isMenuOpen)
                .offset(x: isMenuOpen ? 0 : -280)
                .animation(.easeInOut, value: isMenuOpen)
        }
        .background(Color.black)
        .sheet(isPresented: .constant(!(isConnected ?? true))){
            withAnimation(.smooth) {
                NetworkMonitorView()
                    .presentationDetents([.height(310)])
                    .presentationCornerRadius(0)
                    .presentationBackgroundInteraction(.disabled)
                    .presentationBackground(.clear)
                    .interactiveDismissDisabled()
            }
        }
    }
    
    @ViewBuilder
    private var PopularEvent: some View {
        VStack(spacing: 10) {
            HStack {
                Text("Popular Event")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding(.bottom, 10)
                
                Spacer()
                
                Text("View more")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                    .font(.subheadline)
                
            }
            
            Image("party2")
                .resizable()
                .frame(height: 210)
                .cornerRadius(20)
                .overlay(alignment: .topTrailing) {
                    VStack {
                        HStack {
                            Participants(showJoin: false, spacing: -12, height: 36, circleHeight: 40, showQuantityJoined: false)
                            
                            Spacer()
                            
                            Circle()
                                .foregroundStyle(.white)
                                .frame(height: 44)
                                .overlay {
                                    Image(systemName: "heart.fill")
                                        .foregroundStyle(.pink)
                                }
                        }
                        .padding()
                        
                        Spacer()
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            .frame(height: 80)
                            .padding(.horizontal, 18)
                            .padding(.bottom, 15)
                            .overlay(alignment: .leading) {
                                VStack(alignment: .leading, spacing: 8) {
                                    HStack {
                                        Text("Ayoama Japanese")
                                            .foregroundStyle(.dark)
                                            .fontWeight(.bold)
                                        
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
                                    }
                                    
                                    HStack {
                                        Text("Taquaral, Campinas")
                                            .font(.caption)
                                            .foregroundStyle(.gray)
                                        
                                        Spacer()
                                        
                                        Text("December 5 2025")
                                            .font(.caption)
                                            .foregroundStyle(.gray)
                                        
                                    }
                                    
                                    Spacer()
                                    
                                }
                                .padding(.horizontal, 30)
                                .padding(.top)
                                
                            }
                    }
                }
        }
        .padding(.horizontal)
        
    }
    
}

#Preview {
    Home()
}
