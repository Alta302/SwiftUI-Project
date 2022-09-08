//
//  ProjectCard.swift
//  SwiftUI_Project7
//
//  Created by 정창용 on 2022/09/14.
//

import SwiftUI

struct ProjectCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("SwiftUI : 창용 개발 노트")
                .fontWeight(.bold)
            
            Text("https://github.com/Alta302/SwiftUI-Project")
            
            Spacer()
                .frame(height: 50)
            
            HStack {
                Image("Swift")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Image("SwiftUI")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                    .frame(height: 50)
                
                Link(destination: URL(string: "https://github.com/Alta302/SwiftUI-Project")!) {
                    Text("홈페이지")
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .frame(width: 80, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
        }
        .padding(30)
        .frame(height: 200)
        .background(Color.yellow)
        .cornerRadius(20)
        .padding(.horizontal, 10)
    }
}

struct ProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCard()
    }
}
