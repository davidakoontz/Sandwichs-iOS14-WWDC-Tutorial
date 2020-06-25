//
//  ContentView.swift
//  Shared
//
//  Created by David on 6/24/20.
//

import SwiftUI

struct ContentView: View {
    var sandwiches: [Sandwich]      // passed in an array of Sandwich-es
    
    
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



struct SandwichCell: View {
    var sandwich: Sandwich      // passed in just ONE sandwich
    
    var body: some View {
        NavigationLink( destination: SandwichDetail(sandwich: sandwich)) {
            
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sandwiches: testData)
    }
}
