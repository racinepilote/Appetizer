//
//  Item.swift
//  Appetizers
//
//  Created by Racine Pilote on 2024-01-21.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
