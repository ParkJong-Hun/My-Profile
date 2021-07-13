//
//  VideoPage.swift
//  SwiftUI_Mini_Project
//
//  Created by 박종훈 on 2021/07/13.
//

import SwiftUI
import AVKit

struct VideoPage: View {
    @Binding var videoURL:String
    var body: some View {
        VideoPlayer(player: AVPlayer(url: URL(string: "\(videoURL)")!)) {
            VStack {
                    Text("Video").foregroundColor(.white).background(Color.black.opacity(0.6)).clipShape(Capsule())
                    Spacer()
            }
        }
    }
}
