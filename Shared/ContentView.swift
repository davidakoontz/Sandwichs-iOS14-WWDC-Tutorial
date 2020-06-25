//
//  ContentView.swift
//  Shared
//
//  Created by David on 6/24/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            Image(systemName: "photo")
            
            VStack(alignment: .leading) {
                Text("My Sandwich Menu!")
                    
                Text("3 ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
