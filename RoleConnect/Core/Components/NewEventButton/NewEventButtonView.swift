//
//  NewEvent.swift
//  RoleConnect
//
//  Created by fabossif on 28/04/25.
//

import SwiftUI

struct NewEventButtonView: View {
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
    }
}

#Preview {
    NewEventButtonView()
}
