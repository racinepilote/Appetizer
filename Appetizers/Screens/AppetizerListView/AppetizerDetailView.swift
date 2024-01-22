//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Racine Pilote on 2024-01-21.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        VStack {
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 300, height: 225)
            VStack {
                Text("Title")
            }
            Button {
                
            } label: {
                Text("Button")
            }
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer)
}
