//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Racine Pilote on 2024-01-22.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.white)
                .frame(width: 45, height: 45)
                .opacity(0.2)
            
            Image(systemName: "xmark")
                .foregroundColor(.black)
                .imageScale(.small)
        }
}
}

#Preview {
    XDismissButton()
}
