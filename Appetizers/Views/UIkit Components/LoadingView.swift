//
//  LoadingView.swift
//  Appetizers
//
//  Created by Racine Pilote on 2024-01-21.
//

import SwiftUI
struct ActivityIndicator: UIViewRepresentable {
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
    }
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.braindPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
}


struct LoadingView: View {
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            ActivityIndicator()
        }
    }
}
