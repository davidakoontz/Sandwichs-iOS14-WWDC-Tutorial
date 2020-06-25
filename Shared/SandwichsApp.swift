//
//  SandwichsApp.swift
//  Shared
//
//  Created by David on 6/24/20.
//

import SwiftUI

@main
struct SandwichsApp: App {
    var sandwiches: [Sandwich] = []     // a new property array of sandwiches
    
    var body: some Scene {
        
        WindowGroup {
            ContentView(sandwiches: testData)
        }
    }
}
