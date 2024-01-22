//
//  AppetizersListView.swift
//  Appetizers
//
//  Created by Racine Pilote on 2024-01-21.
//

import SwiftUI

struct AppetizersListView: View {
    
    @StateObject private var viewModel = AppetizerListViewModel()

    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers, id: \.id) { appetizer in
                    AppetizerListCellView(appetizer: appetizer)
                }
                .navigationTitle("🍟 Appetizers")
            }
            .onAppear{
                viewModel.getAppetizers()
            }
           
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}


// Preview
struct AppetizersListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersListView()
    }
}
