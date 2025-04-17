//
//  LeadingMenu.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 17/04/25.
//

import SwiftUI

struct LeadingMenu: View {
    
    @Binding var isOpen: Bool
    
    var body: some View {
        ZStack {
            if isOpen {
                Color.white.opacity(0.3)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        isOpen = false
                    }
                    .zIndex(0)
            }
            
            GeometryReader { geo in
                VStack(alignment: .leading, spacing: 40) {
                    
                    
                }
                .padding(.top, 60)
                .padding(.horizontal)
                .frame(width: 280, height: geo.size.height)
                .background(Color.white)
                .zIndex(2)
                
            }
        }
    }
    
}

#Preview {
    LeadingMenu(isOpen: .constant(false))
}
