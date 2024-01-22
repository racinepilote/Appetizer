//
//  EmptyState.swift
//  Appetizers
//
//  Created by Racine Pilote on 2024-01-22.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 40) {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                Text(message)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyState(
        imageName: "empty-order",
        message: "You have no items in your order yet.")
}
