//
//  CodableBundleExtension.swift
//  AfricaSwiftUI
//
//  Created by Sergey on 20.04.2023.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to locate \(file) in bundle")
        }
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        // 3. Create a decoder
        let decoder = JSONDecoder()
        // 4. Create the property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        // 5. Rerurn ready-to-use dta
        return loaded
    }
}
