//
//  HomeView.swift
//  SwiftUI_Project10
//
//  Created by 정창용 on 2022/09/19.
//

import SwiftUI

struct HomeView: View {
    let movie: Movie
    
    var body: some View {
        NavigationView {
            List(movie.products) { product in
                NavigationLink (
                    destination: ProductDetailView(product: product)
                        // 네비게이션 back 버튼 숨김
                        /*.navigationBarBackButtonHidden(true)*/) {
                    ProductRow(product: product)
                }
                .listRowInsets(EdgeInsets.init())
                .buttonStyle(PlainButtonStyle())
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("지브리 스튜디오")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(movie: Movie())
    }
}
