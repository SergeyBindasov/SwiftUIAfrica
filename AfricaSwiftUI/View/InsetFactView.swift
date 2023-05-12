//
//  InsetFactView.swift
//  AfricaSwiftUI
//
//  Created by Sergey on 12.05.2023.
//

import SwiftUI

struct InsetFactView: View {
    
    let animal: AnimalModel
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } // TABS
            .tabViewStyle(PageTabViewStyle())
            .frame( minHeight: 148, idealHeight: 168, maxHeight: 180)
        } // BOX
    }
}

struct InsetFactView_Previews: PreviewProvider {
    
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
