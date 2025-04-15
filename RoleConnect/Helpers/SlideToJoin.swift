//
//  SlideToJoin.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 15/04/25.
//

import SwiftUI

struct SlideToJoin: View {
    
    var config: Config
    var onSwiped: () -> ()
    
    var body: some View{
        GeometryReader { geo in
            
        }
    }
    
    struct Config {
        var idleText: String
        var onSwipeText: String
        var confirmationText: String
        var tint: Color
        var foregroundColor: Color
        var height: CGFloat = 70
    }
}

#Preview {
    EventDetail()
}
