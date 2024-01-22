//
//  Alert.swift
//  Appetizers
//
//  Created by Racine Pilote on 2024-01-21.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    let id: UUID = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {
    static let invalidData =       AlertItem(title: Text("Server Error"),
                                              message: Text("The data received from the server was invalid. Please contact support."),
                                              dismissButton: .default(Text("0K")))

    static let invalidResponse =   AlertItem(title: Text("Server Error"),
                                              message: Text("Invalid response from the server. Please try again later or contact support."),
                                              dismissButton: .default(Text("0K")))
    
    static let invalidURL =         AlertItem(title: Text("Server Error"),
                                              message: Text("There was an issue connecting to the server. If this persists, please contact support."),
                                              dismissButton: .default(Text("0K")))
    
    static let unableToComplete =   AlertItem(title: Text("Server Error"),
                                              message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                              dismissButton: .default(Text("0K")))
    static let invalidForm =        AlertItem(title: Text("Invalid Form"),
                                              message: Text("Please ensure all fields in the form have been filled out."),
                                              dismissButton: .default(Text("0K")))
    
    static let invalidEmail =       AlertItem(title: Text("Invalid Email"),
                                              message: Text("Please ensure email is conrectly filled"),
                                              dismissButton: .default(Text("0K")))
    
    static let invalidUserData =    AlertItem(title: Text("Profile Error"),
                                              message: Text("There was an error saving or retrieving your profile. Please try again later."),
                                              dismissButton: .default(Text("0K")))
    
    static let userSaveSuccess =    AlertItem(title: Text("User Success"),
                                              message: Text("User saved successfully"),
                                              dismissButton: .default(Text("0K")))
}

