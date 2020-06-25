//
//  ContentView.swift
//  Shared
//
//  Created by David on 6/24/20.
//

import SwiftUI

struct ContentView: View {
    var sandwiches: [Sandwich] = []     // a new property array of sandwiches
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(sandwiches) { sandwich in
                    SandwichCell(sandwich: sandwich)
                }
                
                HStack {
                    Spacer()
                    Text("\(sandwiches.count) Sandwiches")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .navigationTitle("Sandwiches")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sandwiches: testData)
    }
}

struct SandwichCell: View {
    var sandwich: Sandwich
    
    var body: some View {
        NavigationLink( destination: Text(sandwich.name)) {
            
            Image(sandwich.thumbnailName)
                .resizable()        // our thumbnails are not all the same size
                .aspectRatio(contentMode: .fit )
                .cornerRadius(8)
                .frame(width: 50, height: 50 )
            
            
            
            VStack(alignment: .leading) {
                Text(sandwich.name)
                
                Text("\(sandwich.ingredientCount) ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
