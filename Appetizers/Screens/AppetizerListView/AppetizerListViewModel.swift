//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Racine Pilote on 2024-01-21.
//

import Foundation

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    
    func getAppetizers () {
        isLoading = true
        NetworkManager.shared.getAppetizers { [self] result in
            DispatchQueue.main.async { [self] in
            isLoading = false
            switch result {
            case .success(let appetizers):
                self.appetizers = appetizers
                
            case .failure(let error):
                switch error {
                case .invalidURL:
                    alertItem = AlertContext.invalidURL
                    
                case .invalidResponse:
                    alertItem = AlertContext.invalidResponse
                    
                case .invalidData:
                    alertItem = AlertContext.invalidData
                    
                case .unableToComplite:
                    alertItem = AlertContext.unableToComplete
                    
                }
            }
            }
        }
    }
    
}
