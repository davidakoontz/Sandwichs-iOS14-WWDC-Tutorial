//
//  SandwichsApp.swift
//  Shared
//
//  Created by David on 6/24/20.
//

import SwiftUI

@main
struct SandwichsApp: App {

    @StateObject private var store = testStore
    
    var body: some Scene {
        
        WindowGroup {
            ContentView(store: store)
        }
    }
}
