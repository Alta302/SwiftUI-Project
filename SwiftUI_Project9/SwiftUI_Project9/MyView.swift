//
//  MyView.swift
//  SwiftUI_Project9
//
//  Created by 정창용 on 2022/09/16.
//

import SwiftUI

struct MyView: View {
    // 타이틀과 배경색을 변수로 지정
    var title: String
    var bgColor: Color
    
    var body: some View {
        ZStack {
            bgColor
                // safeArea 부분까지 채워줌
                .edgesIgnoringSafeArea(.all)
            
            Text(title)
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "홈", bgColor: Color.yellow)
    }
}
