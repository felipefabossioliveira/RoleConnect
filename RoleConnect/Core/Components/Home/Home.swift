//
//  Home.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 11/04/25.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            Header()

            EventList()
            
            Spacer()
        }
    }
}

#Preview {
    Home()
}
