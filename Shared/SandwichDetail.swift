//
//  SandwichDetail.swift
//  Sandwichs
//
//  Created by David on 6/24/20.
//

import SwiftUI

struct SandwichDetail: View {
    @State private var zoomed = false
    var sandwich: Sandwich
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            Image(sandwich.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                
                .onTapGesture {
                    withAnimation{
                        zoomed.toggle()
                    }
                }
            
            Spacer(minLength: 0)
            
            if sandwich.isSpicy && !zoomed {
                HStack {
                    Spacer()
                    Label("Spicy", systemImage: "flame.fill")
                    Spacer()
                }
                .padding(.all)
                .font(Font.headline.smallCaps() )
                .background(Color.red)
                .foregroundColor(.yellow)
                .transition(.move(edge: .bottom))
            }
        }
        .navigationTitle(sandwich.name)
        .edgesIgnoringSafeArea(.bottom)
    }
    
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                SandwichDetail(sandwich: testData[0] )
            }
            NavigationView {
                SandwichDetail(sandwich: testData[1] )
            }
        }
    }
}
