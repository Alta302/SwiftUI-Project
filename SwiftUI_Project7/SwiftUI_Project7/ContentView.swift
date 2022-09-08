//
//  ContentView.swift
//  SwiftUI_Project7
//
//  Created by 정창용 on 2022/09/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Button(action: {
                        print("메뉴를 선택했습니다.")
                    }) {
                        Image(systemName: "list.bullet")
                            .font(.system(size: 50))
                            .foregroundColor(.black)
                            .padding()
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        print("계정을 선택했습니다.")
                    }) {
                        Image(systemName: "person.crop.circle.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.black)
                            .padding()
                    }
                }
                
                ProjectCard()
                    .padding(.bottom, 2)
                
                MyCard(myImage: "scribble.variable", myText: "SwiftUI : Text", hour: 1, min: 20 , bgColor: Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
                MyCard(myImage: "arrowshape.turn.up.forward.circle", myText: "Image", hour: 1, min: 10, bgColor: Color(#colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)))
                MyCard(myImage: "server.rack", myText: "Stack", hour: 4, min: 10, bgColor: Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)))
                MyCard(myImage: "doc.text.below.ecg.fill", myText: "View layout", hour: 1, min: 10, bgColor: Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
                MyCard(myImage: "books.vertical.fill", myText: "MVVM", hour: 8, min: 10, bgColor: Color(#colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
