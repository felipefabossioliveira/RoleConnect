//
//  NewEvent.swift
//  RoleConnect
//
//  Created by fabossif on 28/04/25.
//

import SwiftUI

struct NewEventButtonView: View {
    
    @EnvironmentObject private var coordinator: AppCoordinator
    @State var createEvent: Bool = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(.white)
            .frame(width: 45, height: 45)
            .overlay {
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                    .fontWeight(.medium)
                    .foregroundStyle(.greyish.opacity(0.7))
            }
            .onTapGesture {
                createEvent.toggle()
            }
            .sheet(isPresented: $createEvent) {
                CreateEvent()
            }
    }
}

#Preview {
    NewEventButtonView()
}
