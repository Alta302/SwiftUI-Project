//
//  Movie.swift
//  SwiftUI_Project10
//
//  Created by 정창용 on 2022/09/19.
//

import Foundation

final class Movie {
    var products: [Product]
    
    // MARK: Initialization
    
    // JSON 파일명 입력
    init(fileName: String = "ProductData.json") {
        self.products = Bundle.main.decode(fileName: fileName, as: [Product].self)
    }
}
