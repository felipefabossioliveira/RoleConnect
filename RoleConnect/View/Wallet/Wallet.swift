//
//  Wallet.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 23/04/25.
//

import SwiftUI

struct Wallet: View {
    
    @EnvironmentObject private var coordinator: AppCoordinator
     
    var body: some View {
        VStack(spacing: 30) {
            
            header
            
            walletBudgetInfo
            
            walletSubMessage
            
            walletRecentTransactions
            
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
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
    private var walletSubMessage: some View {
        VStack(spacing: 5) {
            Rectangle()
                .fill(.greyish)
                .frame(maxHeight: 70)
                .overlay(content: {
                    VStack {
                        
                        HStack {
                            
                            Image(systemName: "info.circle")
                                .foregroundStyle(.blue)
                            
                            Text("The Budget available is not cumulative!")
                                .foregroundStyle(.white)
                                .font(.caption)
                                .fontWeight(.semibold)
                        }
                        
                        Text("It will reset every month.")
                            .font(.caption)
                            .fontWeight(.semibold)
                    }
                })
                .clipShape(
                    CustomRoundedShape(
                        topLeftRadius: 0,
                        topRightRadius: 0,
                        bottomLeftRadius: 20,
                        bottomRightRadius: 20)
                )
        }
        .padding(.top, -29)
        .padding(.horizontal)
        
    }
    
    @ViewBuilder
    private var walletBudgetInfo: some View {
        VStack {
            Rectangle()
                .fill(.dark)
                .frame(height: 250)
                .overlay(alignment: .topLeading) {
                    VStack(alignment: .leading, spacing: 30) {
                        
                        // Top
                        HStack(spacing: 20) {
                            Text("Wallet Balance")
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.fbsPurple)
                                .frame(width: 50, height: 25)
                                .overlay {
                                    Text("+1.2%")
                                        .font(.caption)
                                        .foregroundStyle(.darkerPurple)
                                        .fontWeight(.bold)
                                }
                            
                            Spacer()
                            
                            Image(systemName: "arrow.clockwise")
                            
                        }
                        
                        
                        VStack(alignment: .leading, spacing: 6) {
                            // Money Info
                            HStack(spacing: 15) {
                                Text("$ 220,00")
                                    .font(.largeTitle)
                                    .fontWeight(.medium)
                                
                                Circle()
                                    .fill(.gray.opacity(0.1))
                                    .frame(width: 30, height: 30)
                                    .overlay {
                                        Image(systemName: "eye")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 9)
                                    }
                            }
                            
                            Text("Updated 03/02/2025")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        
                        RoundedRectangle(cornerRadius: 10)
                            .overlay {
                                HStack {
                                    
                                    VStack(alignment: .leading,  spacing: 10) {
                                        Text("Today's Expense")
                                            .font(.custom("name", size: 12))
                                            .fontWeight(.bold)
                                            .foregroundStyle(.gray)
                                        
                                        HStack {
                                            Text("-$112")
                                            
                                            Text("+1.4%")
                                                .font(.caption2)
                                                .foregroundStyle(.darkPurple)
                                                .fontWeight(.bold)
                                        }
                                    }
                                    .foregroundStyle(.dark)
                                    .fontWeight(.semibold)
                                    
                                    Spacer()
                                    
                                    Rectangle()
                                        .fill(.gray)
                                        .frame(width: 1, height: .infinity)
                                    
                                    Spacer()
                                    
                                    VStack(alignment: .leading, spacing: 10) {
                                        Text("Weekly Expense")
                                            .font(.custom("name", size: 12))
                                            .fontWeight(.medium)
                                            .foregroundStyle(.gray)
                                        
                                        HStack {
                                            Text("-$74")
                                            
                                            Text("+1.2%")
                                                .font(.caption2)
                                                .foregroundStyle(.darkPurple)
                                                .fontWeight(.bold)
                                        }
                                    }
                                    .foregroundStyle(.dark)
                                    .fontWeight(.semibold)
                                }
                                .padding([.top, .bottom])
                                .padding(.horizontal, 25)
                            }
                            .frame(maxHeight: 70)
                    }
                    .padding(20)
                }
                .clipShape(CustomRoundedShape(topLeftRadius: 20, topRightRadius: 20, bottomLeftRadius: 0, bottomRightRadius: 0))
        }
        .padding(.horizontal)
    }
    
    @ViewBuilder
    private var walletRecentTransactions: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text("Transaction History")
                    .foregroundStyle(.white)
                
                Spacer()
                
                Text("See All")
                    .foregroundStyle(.gray)
            }
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 25) {
                    
                    walletRecentTransactionItem
                    
                }
            }
        }
        .padding(.horizontal, 20)
    }
    
    @ViewBuilder
    private var walletRecentTransactionItem: some View {
        
        HStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 60, height: 60)
                .overlay {
                    Image("party2")
                        .resizable()
                        .frame(width: 60, height: 60)
                }
                .clipShape(.rect(cornerRadius: 10))
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Mamma Jamma, Pizzaria")
                    .font(.caption)
                    .fontWeight(.semibold)
            
                    HStack(spacing: 5) {
                        
                        Image(systemName: "calendar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10, height: 10)
                   
                        Text("Apr 23")
                            .font(.caption)
                            .foregroundStyle(.gray)
                        
                    }
                    .fontWeight(.semibold)
                
                HStack(spacing: 5) {
                    
                    Image(systemName: "clock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 10, height: 10)
                    
                    Text("13:15")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                .fontWeight(.semibold)
            }
            .padding(.leading, 5)
            
            Spacer()
                        
            Text("-$ 85,00")
                .fontWeight(.semibold)
                .foregroundStyle(.fbsRed)
        }
    }
}

#Preview {
    Wallet()
}
