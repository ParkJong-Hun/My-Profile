//
//  VideoPage.swift
//  SwiftUI_Mini_Project
//
//  Created by 박종훈 on 2021/07/13.
//

import SwiftUI
import WebKit

struct VideoPage: UIViewRepresentable {
    @Binding var videoURL:String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: URL(string: videoURL)!))
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}
