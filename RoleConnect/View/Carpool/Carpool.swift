//
//  Carpool.swift
//  RoleConnect
//
//  Created by fabossif on 29/04/25.
//

import SwiftUI

struct Carpool: View {
    
    @EnvironmentObject private var coordinator: AppCoordinator
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                
                HeaderCoordinators()
                
                searchbar
                
                ScrollView(showsIndicators: false) {
                    
                    VStack(spacing: 40) {
                        carItem
                        
                        carItem
                        
                        carItem
                        
                    }
                }
                
            }
            .padding()
        }
        .navigationBarBackButtonHidden()
    }
    
    var searchbar: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.clear)
                .frame(height: 50)
                .overlay {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 17)
                            .foregroundStyle(.gray)
                        
                        CustomTextField(text: .constant(""), placeholder: "Car, name, events, restaurants...", placeholderColor: .gray,keyboardType: .default, tintColor: .gray, foregroundColor: .gray, fontWeight: .regular, autocorrectionDisabled: false)
                        
                        
                        Image(systemName: "line.3.horizontal.decrease.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 20)
                            .foregroundStyle(.gray)
                    }
//                    .padding()
                }
        }
    }
    
    var carItem: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.lightGray)
                .frame(height: 200)
                .overlay {
                    
                    VStack(alignment: .leading) {
                        Text("Bruno Morgan")
                            .fontWeight(.bold)
                            .foregroundStyle(.dark)
                            .padding()
                        
                        Spacer()
                        VStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.dark)
                                .frame(height: 70)
                                .overlay {
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text("Jeep Compass")
                                                .fontWeight(.medium)
                                            
                                            HStack {
                                                Image(systemName: "carseat.right.fill")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(height:12)
                                                
                                                Text("4 Seats")
                                                    .font(.caption)
                                                    .fontWeight(.semibold)
                                                
                                                Image(systemName: "figure.walk.motion")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(height:13)
                                                
                                                Text("5 min")
                                                    .font(.caption)
                                                    .fontWeight(.semibold)
                                            }
                                            
                                        }
                                        
                                        Spacer()
                                        
                                        RoundedRectangle(cornerRadius: 10)
                                            .background(.black)
                                            .frame(width: 70, height: 35)
                                            .overlay {
                                                Text("Choose")
                                                    .font(.callout)
                                                    .foregroundStyle(.dark)
                                                    .fontWeight(.semibold)
                                            }
                                    }
                                    .padding(.horizontal)
                                    
                                }
                        }
                        .padding(.bottom, 1)
                    }
                    //                    .padding(.top)
                    .padding(.horizontal, 1)
                }
        }
    }
}

#Preview {
    Carpool()
}
