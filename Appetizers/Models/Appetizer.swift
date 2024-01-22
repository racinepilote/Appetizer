//
//  Appetizer.swift
//  Appetizers
//
//  Created by Racine Pilote on 2024-01-21.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let imageURL: String
    let carbs: Int
    let calories: Int
    let price: Double
    let protein: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1, name: "Asian Flank Steak", description: "This perfectly thin cut just melts in your mouth.", imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg", carbs: 0, calories: 300, price: 8.99, protein: 14)
    
    
    static let sampleAppetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    
    static let orderItemOne = Appetizer(id: 0001, name: "Asian Flank Steak", description: "This perfectly thin cut just melts in your mouth.", imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg", carbs: 0, calories: 300, price: 8.99, protein: 14)
    
    static let orderItemTwo = Appetizer(id: 0002, name: "Asian Flank Steak", description: "This perfectly thin cut just melts in your mouth.", imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg", carbs: 0, calories: 300, price: 8.99, protein: 14)
    
    
    static let orderItemThree = Appetizer(id: 0003, name: "Asian Flank Steak", description: "This perfectly thin cut just melts in your mouth.", imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg", carbs: 0, calories: 300, price: 8.99, protein: 14)
    
    static let sampleOrderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
