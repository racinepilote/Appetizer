//
//  AppetizersTableView.swift
//  Appetizers
//
//  Created by Racine Pilote on 2024-01-21.
//

import SwiftUI

struct AppetizersTabView: View {
    
    
    var body: some View {
        TabView {
            AppetizersListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AppetizersAccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            AppetizersOrderView()
                .tabItem {
                    Image(systemName: "briefcase")
                    Text("Order")
                }
        }.accentColor(.braindPrimary)
    }
}

#Preview {
    AppetizersTabView()
}
