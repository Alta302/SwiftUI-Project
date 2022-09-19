//
//  MyTabView.swift
//  SwiftUI_Project9
//
//  Created by 정창용 on 2022/09/16.
//

import SwiftUI

struct MyTabView: View {
    @State var tabIndex: TabIndex
    @State var imageSize: CGFloat = 1.2
    
    enum TabIndex {
        case home, photo, profile
    }
    
    func showMyView(tabIndex: TabIndex) -> MyView {
        switch tabIndex {
        case .home:
            return MyView(title: "홈", bgColor: Color.yellow)
            
        case .photo:
            return MyView(title: "사진첩", bgColor: Color.red)
            
        case .profile:
            return MyView(title: "사용자 계정", bgColor: Color.blue)
        }
    }
    
    func changeColor(tabIndex: TabIndex) -> Color {
        switch tabIndex {
        case .home:
            return Color.yellow
            
        case .photo:
            return Color.red
            
        case .profile:
            return Color.blue
        }
    }
    
    func calculatePosition(tabIndex: TabIndex, geo: GeometryProxy) -> CGFloat {
        switch tabIndex {
        case .home:
            return -(geo.size.width / 3)
            
        case .photo:
            return 0
            
        case .profile:
            return (geo.size.width / 3)
        }
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .bottom) {
                self.showMyView(tabIndex: self.tabIndex)
                
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 100, height: 80)
                    .offset(x: self.calculatePosition(tabIndex: self.tabIndex, geo: geo), y: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 15 : 0)
                
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        Button(action: {
                            withAnimation {
                                self.tabIndex = .home
                            }
                        }) {
                            Image(systemName: "house.fill")
                                .font(.title2)
                                // 만약 tabIndex가 .home이라면 imageSize를 실행하고 그게 아니라면 사이즈는 1.0
                                .scaleEffect(self.tabIndex == .home ? self.imageSize : 1.0)
                                .frame(width: geo.size.width / 3, height: 50)
                                // tabIndex가 .home이 선택 되었다면, changeColor()를 실행하고, 그게 아니라면 gray 색을 부여
                                .foregroundColor(self.tabIndex == .home ? self.changeColor(tabIndex: tabIndex) : Color.gray)
                                // tabIndex가 photo라면 y축은 -12, 그게 아니라면 0
                                .offset(y: self.tabIndex == .home ? -10 : 0)
                        }
                        .background(Color.white)
                        
                        Button(action: {
                            withAnimation {
                                self.tabIndex = .photo
                            }
                        }) {
                            Image(systemName: "photo.fill")
                                .scaleEffect(self.tabIndex == .photo ? self.imageSize : 1.0)
                                .frame(width: geo.size.width / 3, height: 50)
                                .font(.title2)
                            .foregroundColor(self.tabIndex == .photo ? self.changeColor(tabIndex: tabIndex) : Color.gray)
                            .offset(y: self.tabIndex == .photo ? -10 : 0)
                        }
                        .background(Color.white)
                        
                        Button(action: {
                            withAnimation {
                                self.tabIndex = .profile
                            }
                        }) {
                            Image(systemName: "person.circle.fill")
                                .scaleEffect(self.tabIndex == .profile ? self.imageSize : 1.0)
                                .frame(width: geo.size.width / 3, height: 50)
                                .font(.title2)
                                .foregroundColor(self.tabIndex == .profile ? self.changeColor(tabIndex: tabIndex) : Color.gray)
                                .offset(y: self.tabIndex == .profile ? -10 : 0)
                        }
                        .background(Color.white)
                    }
                    
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 10)
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView(tabIndex: .home)
    }
}
