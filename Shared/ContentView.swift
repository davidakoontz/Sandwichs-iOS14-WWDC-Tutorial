//
//  ContentView.swift
//  Shared
//
//  Created by David on 6/24/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store: SandwichStore
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.sandwiches) { sandwich in
                    SandwichCell(sandwich: sandwich)
                }
                .onMove(perform: moveSandwiches)
                .onDelete(perform: deleteSandwiches)
                
                
                HStack {
                    Spacer()
                    Text("\(store.sandwiches.count) Sandwiches")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .navigationTitle("Sandwiches")
            .toolbar {      // these appear at bottom of List - NOT Top
                Button("Add", action: makeSandwich)
                Spacer()
                EditButton()
            }
            
            Image("Sandwich cartoon")       // for iPad/Mac - the right 2nd view
        }
        
    }
    
    func makeSandwich() {
        withAnimation {
            store.sandwiches.append(Sandwich(name: "Patty melt",
                ingredientCount: 3 ))
        }
    }
    
    func moveSandwiches(from: IndexSet, to: Int) {
        withAnimation {
            store.sandwiches.move(fromOffsets: from, toOffset: to)
        }
    }

    func deleteSandwiches(offsets: IndexSet) {
        withAnimation {
            store.sandwiches.remove(atOffsets: offsets)
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
        ContentView(store: testStore)
    }
}
