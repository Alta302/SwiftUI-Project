//
//  CircleImageView.swift
//  SwiftUI_Project8
//
//  Created by 정창용 on 2022/09/16.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("seogun")
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 5, y: 10)
            // 이미지 위에 Circle을 씌워줌
            .overlay(Circle().opacity(0.1))
            // 그 위에 테두리를 생성
            .overlay(Circle().stroke(Color.yellow, lineWidth: 10))
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
