//
//  User.swift
//  Appetizers
//
//  Created by Racine Pilote on 2024-01-22.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var phone = ""
    var birthday = Date()
    var extraNapkins = false
    var frequentRefills = false
}
