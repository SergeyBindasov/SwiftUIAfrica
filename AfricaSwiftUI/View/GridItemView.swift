//
//  GridItemView.swift
//  AfricaSwiftUI
//
//  Created by Sergey on 25.05.2023.
//

import SwiftUI

struct GridItemView: View {
    
    let animal: AnimalModel
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct GridItemView_Previews: PreviewProvider {
    
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        GridItemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
