//
//  SearchBar.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 15/04/25.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFit()
                .frame(height: 25)
                .padding(.trailing, 10)
            
            TextField("Search events, restaurants..", text: $searchText)
                .keyboardType(.asciiCapable)
                .tint(.gray)
                .autocorrectionDisabled(true)
                .foregroundStyle(.gray.opacity(0.7))
                .overlay(alignment: .trailing) {
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .foregroundStyle(.dark)
                        .offset(x: 10)
                        .opacity(searchText.isEmpty ? 0 : 1)
                        .onTapGesture {
                            searchText = ""
                        }
                }
        
        }
        .frame(height: 25)
        .font(.headline)
        .padding()
        .background (
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .stroke(.gray.opacity(0.3))
                
//                .shadow(
//                    color: .black.opacity(0.15),
//                    radius: 10, x: 0, y: 0
//                )
        )
        .padding()
    }
}

#Preview {
    SearchBar(searchText: .constant(""))
}
