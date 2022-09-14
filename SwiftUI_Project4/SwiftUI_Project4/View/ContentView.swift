//
//  ContentView.swift
//  SwiftUI_Project4
//
//  Created by 정창용 on 2022/09/02.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            LottieCard(title: "스위프트UI", icon: "qrcode.viewfinder", animate: "sending-email", color1: Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)), color2: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                .offset(y: show ? 140: 20)
                .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    self.show.toggle()
                }
            
            LottieCard(title: "스위프트UI", icon: "qrcode.viewfinder", animate: "School", color1: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), color2: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                .offset(x: show ? -200: 00)
                .rotationEffect(Angle(degrees: show ? 120: 0))
                .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    self.show.toggle()
                }
            
            LottieCard(title: "스위프트UI", icon: "qrcode.viewfinder", animate: "map", color1: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)), color2: Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)))
                .offset(x: show ? -200: 00)
                .rotationEffect(Angle(degrees: show ? 50: 0))
                .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    self.show.toggle()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
