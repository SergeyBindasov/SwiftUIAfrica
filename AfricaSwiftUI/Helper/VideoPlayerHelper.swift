//
//  VideoPlayerHelper.swift
//  AfricaSwiftUI
//
//  Created by Sergey on 23.05.2023.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileForemt: String) -> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fileForemt) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileForemt)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
