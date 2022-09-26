//
//  ProductRow.swift
//  SwiftUI_Project10
//
//  Created by 정창용 on 2022/09/19.
//

import SwiftUI

struct ProductRow: View {
    let product: Product
    
    var body: some View {
        HStack {
            productImage
            productDescription
        }
        .frame(height: 150)
        .background(Color.primary.colorInvert()) // 다크 모드, 라이트 모드
        .cornerRadius(10)
        .shadow(color: .primaryShadow, radius: 1, x: 2, y: 2)
        .padding(.vertical, 10)
    }
}

private extension ProductRow {
    var productImage: some View {
        Image(product.imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 150)
            .clipped()
    }

    var productDescription: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(product.name)
                    .font(.headline)
                    .fontWeight(.medium)
                
                Spacer()
                
                Text(product.movie)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .padding(.bottom, 10)
            
            Text(product.description)
                .font(.footnote)
                .foregroundColor(.secondary)
            
            Spacer()
            
            footerView
        }
        .padding([.leading, .bottom], 10)
        .padding([.trailing, .top])
    }

    var footerView: some View {
        HStack(spacing: 0) {
            Text("₩")
                .font(.footnote)
            + Text("\(product.price)")
                .font(.headline)
            
            Spacer()
            
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundColor(.lightRed)
                .frame(width: 32, height: 32)
            
            Image(systemName: "cart")
                .foregroundColor(.lightRed)
                .frame(width: 32, height: 32)
        }
    }
}

// 프리뷰
struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[0])
    }
}
