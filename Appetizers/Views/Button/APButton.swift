//
//  APButton.swift
//  Appetizers
//
//  Created by Racine Pilote on 2024-01-22.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .foregroundColor(.white)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(Color.colorBraindPrimary)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "Test Button")
}
