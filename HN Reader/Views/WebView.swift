//
//  WebView.swift
//  HN Reader
//
//  Created by Peggy Wollenhaupt on 7/16/20.
//  Copyright © 2020 Peggy Wollenhaupt. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable, View {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let safeUrl = URL(string: safeString) {
                let request = URLRequest(url: safeUrl)
                uiView.load(request)
            }
        }
    }
}
