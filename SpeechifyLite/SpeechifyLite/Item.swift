//
//  Item.swift
//  SpeechifyLite
//
//  Created by Kamil Bobrowski on 13/08/2025.
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
