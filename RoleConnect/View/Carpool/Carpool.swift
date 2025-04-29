//
//  Carpool.swift
//  RoleConnect
//
//  Created by fabossif on 29/04/25.
//

import SwiftUI

struct Carpool: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.dark)
                .overlay(alignment: .topLeading) {
                    VStack(spacing: 35) {
                        header
                        
                        ScrollView {
                            carItem
                        }
                    }
                    .padding(.top, 35)
                    .padding(.horizontal, 25)
                }
        }
    }
    
    var header: some View {
        VStack(spacing: 30) {
            HStack {
                HStack {
                    Text("Rides Available")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                }
            }
            
            searchbar
        }
    }
    
    var searchbar: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 50)
                .overlay {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.gray)
                        
                        CustomTextField(text: .constant(""), placeholder: "Search By: Car, name, events..", placeholderColor: .gray,keyboardType: .default, tintColor: .gray, foregroundColor: .gray, fontWeight: .regular, autocorrectionDisabled: false)
                        
                        
                        Image(systemName: "line.3.horizontal.decrease.circle")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.gray)
                    }
                    .padding()
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
                            .padding(.top)
                            .padding(.horizontal, 10)
                        
                        Spacer()
                        VStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.dark)
                                .frame(height: 70)
                                .overlay {
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text("Jeep Renegade")
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
                                                Text("Join")
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
