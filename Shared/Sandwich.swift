//
//  Sandwich.swift
//  Sandwiches
//
//  Created by Barry Martin on 6/23/20.
//

import Foundation

struct Sandwich: Identifiable {
    var id = UUID()
    var name: String
    var ingredientCount: Int
    var isSpicy: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb" }
}

let testData = [
    Sandwich(name: "Club", ingredientCount: 4, isSpicy: false),
    Sandwich(name: "Hot dog", ingredientCount: 5, isSpicy: true)
]
