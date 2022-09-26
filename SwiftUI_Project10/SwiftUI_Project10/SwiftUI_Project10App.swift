//
//  SwiftUI_Project10App.swift
//  SwiftUI_Project10
//
//  Created by 정창용 on 2022/09/19.
//

import SwiftUI

@main
struct SwiftUI_Project10App: App {
    var body: some Scene {
        WindowGroup {
            HomeView(movie: Movie())
        }
    }
}
