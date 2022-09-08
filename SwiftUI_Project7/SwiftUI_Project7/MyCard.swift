//
//  MyCard.swift
//  SwiftUI_Project7
//
//  Created by 정창용 on 2022/09/14.
//

import SwiftUI

struct MyCard: View {
    var myImage: String
    var myText: String
    var hour: Int
    var min: Int
    var bgColor: Color
    
    var body: some View {
        HStack {
            Image(systemName: "\(myImage)")
                .font(.system(size: 50))
                .foregroundColor(.white)
                .frame(width: 90)
                .padding()
            
            VStack(alignment: .leading, spacing: 0) {
                Divider()
                    .opacity(0)
                
                Text("\(myText)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
                    .lineLimit(1)
                
                Text("예상 소요 시간 : \(hour)시간 \(min)분")
                    .font(.footnote)
                    .foregroundColor(.white)
            }
        }
        .frame(height: 100, alignment: .center)
        .background(bgColor)
        .cornerRadius(20)
        .padding(.horizontal, 10)
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(myImage: "scribble.variable", myText: "SwiftUI : Text", hour: 1, min: 20 , bgColor: Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
    }
}
