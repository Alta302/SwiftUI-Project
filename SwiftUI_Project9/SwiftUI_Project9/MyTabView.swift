//
//  MyTabView.swift
//  SwiftUI_Project9
//
//  Created by 정창용 on 2022/09/16.
//

import SwiftUI

struct MyTabView: View {
    enum TabIndex {
        case home, photo, profile
    }
    
    func showMyView(tabIndex: TabIndex) -> MyView {
        
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
