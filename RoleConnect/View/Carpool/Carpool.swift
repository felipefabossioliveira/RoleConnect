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
    
}

#Preview {
    Carpool()
}
