//
//  ContentView.swift
//  SwiftUI_Project11
//
//  Created by 정창용 on 2022/09/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Trapezium()
    }
}

struct Trapezium: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: .zero)
        path.addLine()
        
        return path
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
