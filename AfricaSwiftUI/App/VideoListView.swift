//
//  VideoListView.swift
//  AfricaSwiftUI
//
//  Created by Sergey on 20.04.2023.
//

import SwiftUI

struct VideoListView: View {
    
    @State var videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                  VideoListItemView(video: item)
                        .padding(.vertical, 8)
                } //: LOOP
            } //: LIST
            .listStyle(.insetGrouped)
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        } //: NAVIGATION VIEW
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
