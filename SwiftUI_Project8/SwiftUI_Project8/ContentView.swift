//
//  ContentView.swift
//  SwiftUI_Project8
//
//  Created by 정창용 on 2022/09/16.
//

import SwiftUI

struct ContentView: View {    
    var body: some View {
        NavigationView {
            ZStack {
                Image("backgroundImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 600)
                    .clipped()
                    // 배경을 위쪽으로 배치함
                    .offset(y: -300)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    CircleImageView()
                        .padding()
                    
                    HStack {
                        // 링크에 .edgesIgnoringSafeArea(.all)를 추가해줘야 한다.
                        NavigationLink(destination: MyWebView(urlToLoad: "https://seons-dev.tistory.com/")
                            .edgesIgnoringSafeArea(.all)) {
                                // 버튼 스타일링
                                Text("사이트 바로가기")
                                    .fontWeight(.bold)
                                    .font(.system(size: 15))
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                                    .cornerRadius(20)
                            }
                        
                            NavigationLink(destination: MyWebView(urlToLoad:  "https://www.youtube.com/channel/UCTO0W79pwZtGNMo0pTCkodQ")
                                .edgesIgnoringSafeArea(.all)) {
                                    Text("구독 하러가기")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15))
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)))
                                        .cornerRadius(20)
                            
                            }
                    }
                }
                .offset(y: -90)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
