//
//  ContentView.swift
//  SwiftUI_Project6
//
//  Created by 정창용 on 2022/09/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // 상단에 VStack을 하나 더 쌓는다.
        VStack {
            MapView()
                // frame 앞에 ignoresSafeArea를 추가해야 합니다.
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -110)
                // offset의 y값을 준만큼 패딩도 할당해주어야 함
                .padding(.bottom, -110)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("경복궁")
                        .font(.title)
                        .padding(.bottom, 10)
                    
                    Text("서울")
                        .font(.caption)
                }
                
                VStack {
                    Text("161 Sajik-ro, Sejongno, Jongno-gu, 서울특별시 South Korea")
                        .font(.footnote)
                        // 폰트 색상 변경
                        .foregroundColor(.secondary)
                }
                
                // 구분선 및 텍스트 추가
                Divider()
                    .padding()
                
                Text("경복궁에 관하여")
                    .font(.title2)
                    .padding(.bottom, 10)
                
                Text("Gyeongbok Palace, was the main royal palace of the Joseon dynasty.")
            }
            .padding()
            
            // 뷰를 상단으로 배치
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

