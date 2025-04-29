//
//  EventDetail.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 15/04/25.
//

import SwiftUI

struct UpcomingEventDetail: View {
    
    @EnvironmentObject private var coordinator: AppCoordinator
    
    @State private var showCarpoolView: Bool = false
    
    let config = SlideToJoin.Config(
        idleText: "Swipe to Join",
        onSwipeText: "Almost there 🔥",
        confirmationText: "Have Fun! 😊",
        tint: .green,
        foregroundColor: .white
    )
    
    var body: some View {
        ZStack {
            
            Banner
            
            VStack {
                
                Spacer()
                
                EventInformations
                
            }
        }
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
    }
    
    @ViewBuilder
    private var Banner: some View {
        Image("pizzaria")
            .resizable()
            .offset(y: -300)
            .ignoresSafeArea()
            .overlay(alignment: .topTrailing) {
                HStack {
                    Circle()
                        .foregroundStyle(.white)
                        .frame(height: 44)
                        .overlay {
                            Image(systemName: "chevron.left")
                                .foregroundStyle(.dark)
                        }
                        .onTapGesture {
                            withAnimation(.easeOut) {
                                coordinator.pop()
                            }
                        }
                    
                    Spacer()
                    
                    Circle()
                        .foregroundStyle(.white)
                        .frame(height: 44)
                        .overlay {
                            Image(systemName: "heart.fill")
                                .foregroundStyle(.pink)
                                .scaleEffect(1.2)
                        }
                }
                .padding(.top, 60)
                .padding(.horizontal, 20)
            }
    }
    
    @ViewBuilder
    private var EventInformations: some View {
        
        VStack(alignment: .leading) {
            
            Text("Mamma Jamma, Pizzaria")
                .font(.title3)
                .fontWeight(.bold)
            
            HStack(alignment: .lastTextBaseline, spacing: 5) {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
                    .fontWeight(.bold)
                
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
                    .fontWeight(.bold)
                
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
                    .fontWeight(.bold)
                
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
                    .fontWeight(.bold)
                
                Image(systemName: "star")
                    .fontWeight(.bold)
                
                
                HStack {
                    Text("4.8 (365 Reviews)")
                        .fontWeight(.bold)
                        .font(.footnote)
                }
                .padding(.leading, 5)
            }
            .padding(.top, 6)
            .padding(.bottom, 15)
            
            HStack(spacing: 25) {
                
                HStack {
                    Image("marker")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 20)
                    
                    Text("Campinas, Centro")
                        .foregroundStyle(.gray)
                }
                
                HStack {
                    Image("calendar")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 20)
                    
                    Text("November 10 2025")
                        .foregroundStyle(.gray )
                }
                
                Spacer()
            }
            .font(.caption)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(.clear)
                .stroke(.gray.opacity(0.4), lineWidth: 1)
                .frame(height: 100)
                .padding(.top, 20)
                .overlay {
                    HStack(alignment: .bottom) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Participants")
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            Participants(showJoin: false, height: 30, circleHeight: 35, QuantityJoined:10)                        }
                        .padding(.top, 20)
                        
                        Spacer()
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.clear)
                            .frame(width: 70, height: 70)
                            .background {
                                Image("map")
                                    .resizable()
                                    .scaledToFill()
                                    .scaleEffect(2)
                                    .frame(maxWidth: 70)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .colorInvert()
                            }
                            .overlay(alignment: .center) {
                                Image("maps")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 30)
                                    .offset(x: 2)
                            }
                            .shadow(color: .gray.opacity(0.3), radius: 10, y: 0)
                        
                        
                    }
                    .padding(.horizontal)
                }
            
            VStack(alignment: .leading, spacing: 12) {
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(.clear)
                    .stroke(.gray.opacity(0.4), lineWidth: 1)
                    .frame(height: 90)
                    .overlay(alignment: .leading) {
                        VStack(alignment: .leading) {
                            HStack {
                                VStack(alignment: .leading) {
                                    HStack {
                                        Text("Carpool Now")
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                    }
                                    
                                    HStack {
                                        Text("3 cars available")
                                            .foregroundStyle(.gray)
                                            .fontWeight(.medium)
                                        
                                        Circle()
                                            .frame(height: 10)
                                            .foregroundStyle(.white)
                                            .offset(y: 1)
                                            .overlay {
                                                Circle()
                                                    .frame(height: 8)
                                                    .foregroundStyle(Color.greenStatus)
                                                    .offset(y: 1)
                                            }
                                    }
                                    
                                    
                                }
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }
                        }
                        .padding(.horizontal)
                    }
                
            }
            .padding(.top, 15)
            .padding(.bottom, 10)
            .onTapGesture {
                showCarpoolView.toggle()
            }
            .sheet(isPresented: $showCarpoolView) {
                Carpool()
            }
            
            HStack {
                Spacer()
                
                SlideToJoin(config: config) {}
                
                Spacer()
            }
            .padding(.top, 18)
            .padding(.horizontal, 6)
            
            
            Spacer()
        }
        .padding(.top, 30)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .frame(height: UIScreen.main.bounds.height * 0.6)
        .background(.dark)
        .cornerRadius(30)
    }
}


#Preview {
    UpcomingEventDetail()
}
