//
//  EventDetail.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 15/04/25.
//

import SwiftUI

struct EventDetail: View {
    
    let config = SlideToJoin.Config(
        idleText: "Swipe to Join",
        onSwipeText: "Almost there 🔥",
        confirmationText: "Have Fun 😊",
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
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Participants")
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            Participants(showJoin: false, spacing: -22)
                        }
                        .padding(.top, 20)
                        
                        Spacer()
                        
                        Image("maps")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                            .offset(x: -5, y: -10)
                        
                    }
                    .padding(.horizontal)
                }
            
            VStack(alignment: .leading, spacing: 12) {
                
                Text("About Event")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text("After many years, we're finally coming back to South East Asia! Your love and support for our band since day 1 has never gone unnoticed and we can't wait to see all of your beautiful faces again.")
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.gray)
                
            }
            .padding(.top, 25)
            
            HStack {
                Spacer()
            
                SlideToJoin(config: config) {}
                
                Spacer()
            }
            .padding(.top, 30)
            .padding(.horizontal, 6)
            
            Spacer()
        }
        .padding(.top, 30)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .frame(height: UIScreen.main.bounds.height * 0.58)
        .background(.white)
        .cornerRadius(30)
    }
}


#Preview {
    EventDetail()
}
