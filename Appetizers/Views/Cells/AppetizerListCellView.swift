//
//  AppetizerListCellView.swift
//  Appetizers
//
//  Created by Racine Pilote on 2024-01-21.
//

import SwiftUI

struct AppetizerListCellView: View {
    let appetizer: Appetizer
    
    var body: some View {
        HStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            VStack(alignment:.leading){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                
            }.padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCellView(appetizer: MockData.sampleAppetizer)
}
