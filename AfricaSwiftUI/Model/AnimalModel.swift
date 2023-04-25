//
//  AnimalModel.swift
//  AfricaSwiftUI
//
//  Created by Sergey on 25.04.2023.
//

import SwiftUI

struct AnimalModel: Codable, Identifiable {
    let id: String 
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
