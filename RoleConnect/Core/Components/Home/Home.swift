//
//  Home.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 11/04/25.
//

import SwiftUI

struct Home: View {
    @StateObject private var homeVM = HomeViewModel()
    
    var body: some View {
        
        VStack {
            
            Header()
            
            ScrollView {
                
                SearchBar(searchText: $homeVM.searchText)
                
                HStack {
                    Text("Upcoming Event")
                        .fontWeight(.bold)
                        .foregroundStyle(.darkBlue)
                    
                    Spacer()
                    
                    Text("View All")
                        .foregroundStyle(.dark)
                        .fontWeight(.semibold)
                        .foregroundStyle(.mediumGray)
                    
                }
                .padding(.horizontal)
                
                EventList()
                    .padding(.leading)
                
                PopularEvent
                    .padding(.top, 20)
                
                Spacer()
            }
        }
    }
    
    @ViewBuilder
    private var PopularEvent: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Popular Event")
                    .fontWeight(.bold)
                    .foregroundStyle(.darkBlue)
                
                Spacer()
                
                Text("See more")
                    .foregroundStyle(.dark)
                    .fontWeight(.semibold)
                    .foregroundStyle(.mediumGray)
                
            }
            
            Image("party1")
                .resizable()
            //                .scaledToFill()
                .frame(height: 210)
                .cornerRadius(20)
                .shadow(color: .gray.opacity(0.7), radius: 10, y: 10)
                .overlay(alignment: .topTrailing) {
                    VStack {
                        HStack {
                            
                            Participants(showJoin: false, spacing: -12, height: 36, circleHeight: 40, showQuantityJoined: false)
                            
                            Spacer()
                            
                            Circle()
                                .foregroundStyle(.white)
                                .frame(height: 44)
                                .overlay {
                                    Image(systemName: "heart")
                                        .foregroundStyle(.dark)
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
                                            .fontWeight(.bold)
                                        
                                        Spacer()
                                        
                                        Text("$60")
                                            .fontWeight(.bold)
                                            .foregroundStyle(.dark)

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
