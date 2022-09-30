//
//  ContentView.swift
//  SwiftUI_Project11
//
//  Created by 정창용 on 2022/09/20.
//

import SwiftUI

struct ContentView: View {
    @State private var startChange = false
    
    var body: some View {
        VStack(spacing: 50) {
            ZStack {
                Trapezium(offset: 0.8, corner: .bottomRight)
                    .fill(Color.yellow.opacity(0.5))
                    .shadow(radius: 10)
                    .frame(height: 400)
                
                Image("mountain")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 400)
                    .clipShape(Trapezium(offset: startChange ? 0.5 : 1.1))
            }
            .edgesIgnoringSafeArea(.top)
            
            Text("산")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
            ZStack {
                Trapezium(offset: 0.5, corner: .topLeft)
                    .fill(Color.yellow.opacity(0.5))
                    .shadow(radius: 10)
                
                Trapezium(offset: 0.5, corner: .topRight)
                    .fill(Color.yellow.opacity(0.5))
                    .shadow(radius: 10)
            }
            .edgesIgnoringSafeArea(.bottom)
        }
        // 앱이 실행될 때 구현
        .onAppear {
            // 애니메이션 적용
            withAnimation(Animation.linear(duration: 1)) {
                self.startChange = true
            }
        }
    }
}

struct Trapezium: Shape {
    var offset: CGFloat = 0.8
    var corner: UIRectCorner = .bottomLeft
    
    var animatableData: CGFloat {
        get { return offset }
        set { offset = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // 시작점 - TopLeft
        // 2. y좌표에서 corner가 .topLeft라면 rect.maxY * offset
        path.move(to: CGPoint(x: 0, y: corner == .topLeft ? rect.maxY * offset : 0))
        // TopRight
        path.addLine(to: CGPoint(x: rect.maxX, y: corner == .topRight ? rect.maxY * offset : 0))
        // BottomRight
        path.addLine(to: CGPoint(x: rect.maxX, y: corner == .bottomRight ? rect.maxY * offset : rect.maxY))
        // 화면 왼쪽 끝으로 선을 그어줌
        path.addLine(to: CGPoint(x: 0, y: corner == .bottomLeft ? rect.maxY * offset : rect.maxY))
        path.closeSubpath()
        
        return path
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
