//
//  VideoModel.swift
//  AfricaSwiftUI
//
//  Created by Sergey on 23.05.2023.
//

import Foundation

struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thuumbnail: String {
        "video-\(id)"
    }
}
