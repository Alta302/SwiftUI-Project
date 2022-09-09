//
//  CircleImage.swift
//  SwiftUI_Project6
//
//  Created by 정창용 on 2022/09/13.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Gyeongbokgung")
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 7)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
