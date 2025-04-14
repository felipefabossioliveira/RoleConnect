//
//  EventList.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 14/04/25.
//

import SwiftUI

struct EventList: View {
    var body: some View {
        VStack(spacing: 25) {
            HStack {
                Text("Next Events")
                    .fontWeight(.bold)
                    .foregroundStyle(.darkBlue)
                
                Spacer()
                
                Text("View All")
                    .foregroundStyle(.dark)
                    .fontWeight(.semibold)
                    .foregroundStyle(.mediumGray)
                
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 25) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .stroke(.gray.opacity(0.2), lineWidth: 2)
                    .overlay {

                        VStack(alignment: .leading) {
                          
                            Image("party1")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                                .shadow(color: .gray.opacity(0.7), radius: 10, y: 10)
                                .overlay(alignment: .topTrailing) {
                                    Circle()
                                        .foregroundStyle(.white)
                                        .frame(height: 44)
                                        .overlay {
                                            Image(systemName: "heart.fill")
                                                .foregroundStyle(.pink)
                                        }
                                        .padding()
                                }
                            
                            Text("Mamma Jamma, Restaurant")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .padding(.top, 10)
                            
                            HStack(spacing: 10) {
                                Image("calendar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 20)
                                    
                                
                                Text("Nov 10 2025")
                                    .font(.caption)
                                    .fontWeight(.medium)
                                    .foregroundStyle(.gray.opacity(0.7))
                                
                                Image("clock")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 20)
                                
                                Text("8:00 PM")
                                    .font(.caption)
                                    .fontWeight(.medium)
                                    .foregroundStyle(.gray.opacity(0.7))
                                
                            }
                                                        
                            HStack(spacing: -16) {
                                Circle()
                                    .frame(width: 35, height: 35)
                                    .overlay {
                                        Image("profile")
                                            .resizable()
                                            .scaledToFill()
                                            .clipShape(Circle())
                                            .frame(width: 30, height: 30)
                                    }
                                    .foregroundStyle(.white)
                    
                                Circle()
                                    .frame(width: 35, height: 35)
                                    .overlay {
                                        Image("profile")
                                            .resizable()
                                            .scaledToFill()
                                            .clipShape(Circle())
                                            .frame(width: 30, height: 30)
                                    }
                                    .foregroundStyle(.white)
                                
                                Circle()
                                    .frame(width: 35, height: 35)
                                    .overlay {
                                        Image("profile")
                                            .resizable()
                                            .scaledToFill()
                                            .clipShape(Circle())
                                            .frame(width: 30, height: 30)
                                    }
                                    .foregroundStyle(.white)
                                
                                Circle()
                                    .frame(width: 35, height: 35)
                                    .overlay {
                                        Image("profile")
                                            .resizable()
                                            .scaledToFill()
                                            .clipShape(Circle())
                                            .frame(width: 30, height: 30)
                                    }
                                    .foregroundStyle(.white)
                                
                                Circle()
                                    .frame(width: 35, height: 35)
                                    .overlay {
                                        Circle()
                                            .foregroundStyle(.dark)
                                            .frame(width: 30, height: 30)
                                            .overlay {
                                                Text("+8k")
                                                    .font(.caption)
                                                    .foregroundStyle(.white)
                                                    .fontWeight(.bold)
                                            }
                                    }
                                    .foregroundStyle(.white)
                                
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
                            .padding(.top, 10)
   
                        }
                        .padding(.horizontal)
                        
                    }
                    .frame(width: 250)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .stroke(.gray.opacity(0.2), lineWidth: 2)
                        .overlay {

                            VStack(alignment: .leading) {
                              
                                Image("party1")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(20)
                                    .shadow(color: .gray.opacity(0.7), radius: 10, y: 10)
                                
                                Text("Mamma Jamma, Restaurant")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .padding(.top, 10)
                                
                                HStack(spacing: 10) {
                                    Image("calendar")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 20)
                                        
                                    
                                    Text("Nov 10 2025")
                                        .font(.caption)
                                        .fontWeight(.medium)
                                        .foregroundStyle(.gray.opacity(0.7))
                                    
                                    Image("clock")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 20)
                                    
                                    Text("8:00 PM")
                                        .font(.caption)
                                        .fontWeight(.medium)
                                        .foregroundStyle(.gray.opacity(0.7))
                                    
                                }
                                                            
                                HStack(spacing: -16) {
                                    Circle()
                                        .frame(width: 35, height: 35)
                                        .overlay {
                                            Image("profile")
                                                .resizable()
                                                .scaledToFill()
                                                .clipShape(Circle())
                                                .frame(width: 30, height: 30)
                                        }
                                        .foregroundStyle(.white)
                        
                                    Circle()
                                        .frame(width: 35, height: 35)
                                        .overlay {
                                            Image("profile")
                                                .resizable()
                                                .scaledToFill()
                                                .clipShape(Circle())
                                                .frame(width: 30, height: 30)
                                        }
                                        .foregroundStyle(.white)
                                    
                                    Circle()
                                        .frame(width: 35, height: 35)
                                        .overlay {
                                            Image("profile")
                                                .resizable()
                                                .scaledToFill()
                                                .clipShape(Circle())
                                                .frame(width: 30, height: 30)
                                        }
                                        .foregroundStyle(.white)
                                    
                                    Circle()
                                        .frame(width: 35, height: 35)
                                        .overlay {
                                            Image("profile")
                                                .resizable()
                                                .scaledToFill()
                                                .clipShape(Circle())
                                                .frame(width: 30, height: 30)
                                        }
                                        .foregroundStyle(.white)
                                    
                                    Circle()
                                        .frame(width: 35, height: 35)
                                        .overlay {
                                            Circle()
                                                .foregroundStyle(.dark)
                                                .frame(width: 30, height: 30)
                                                .overlay {
                                                    Text("+8k")
                                                        .font(.caption)
                                                        .foregroundStyle(.white)
                                                        .fontWeight(.bold)
                                                }
                                        }
                                        .foregroundStyle(.white)
                                    
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
                                .padding(.top, 10)
       
                            }
                            .padding(.horizontal)
                            
                        }
                        .frame(width: 250)
                }
            }
            .frame(height: 290)
        }
        .padding()
    }
}

#Preview {
    EventList()
}
