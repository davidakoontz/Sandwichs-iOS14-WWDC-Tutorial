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
        Image(sandwich.imageName)
            .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .edgesIgnoringSafeArea(.bottom)
            .onTapGesture { zoomed.toggle()  }
            .navigationTitle(sandwich.name)
    }
    
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SandwichDetail(sandwich: testData[0] )
        }
    }
}
