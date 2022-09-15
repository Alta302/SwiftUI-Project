//
//  MyWebView.swift
//  SwiftUI_Project8
//
//  Created by 정창용 on 2022/09/16.
//

import SwiftUI
import WebKit

struct MyWebView: UIViewRepresentable {
    var urlToLoad: String
    
    // UIView 만들기
    func makeUIView(context: Context) -> WKWebView {
        // unwrapping
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        // 웹뷰 인스턴스 생성
        let webView = WKWebView()
        
        // 웹뷰를 로드한다
        webView.load(URLRequest(url: url))
        
        return webView
    }
    
    // 업데이트 UIView
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}
