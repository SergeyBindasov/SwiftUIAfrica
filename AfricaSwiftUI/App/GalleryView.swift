//
//  GalleryView.swift
//  AfricaSwiftUI
//
//  Created by Sergey on 20.04.2023.
//

import SwiftUI

struct GalleryView: View {
    
    @State private var selectedAnimal: String = "lion"
    
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
//    let gridLayout: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
    
    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            // MARK: - Grid
            
            VStack(alignment: .center, spacing: 30) {
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = item.image
                            }
                    } // LOOP
                } // GRID
            } // END OF GRID
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        } // END OF SCROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
