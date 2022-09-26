//
//  ProductDetailView.swift
//  SwiftUI_Project10
//
//  Created by 정창용 on 2022/09/19.
//

import SwiftUI

struct ProductDetailView: View {
    // 정보를 전달받기 위한 프로퍼티 선언
    let product: Product
    
    var body: some View {
        VStack(spacing: 0) {
            productImage // 영화의 이미지가 올 부분
            orderView // 영화 정보를 출력하고 그 영화를 구매하기 위한 뷰
        }
        .edgesIgnoringSafeArea(.top)
    }
}

private extension ProductDetailView {
    // MARK: View
    var productImage: some View {
        GeometryReader { geo in
            Image(self.product.imageName)
                .resizable()
                .scaledToFill()
                // 이미지 중앙을 기준으로 양옆을 자름
                .frame(width: geo.size.width, height: geo.size.height)
        }
    }
    
    var orderView: some View {
        GeometryReader {
            VStack(alignment: .leading) {
                self.productDescription // 영화 제목과 즐겨찾기 버튼 이미지 추가
                
                Spacer()
                
                self.priceInfo // 가격
                self.orderButton // 주문 버튼
            }
            // GeometryReader가 차지하고 있는 뷰 높이보다 VStack의 높이가 10 크도록 지정해 줌
            .frame(height: $0.size.height + 10)
            .padding(30)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.4), radius: 10, x: 0, y: -4)
        }
    }
    
    var productDescription: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text(product.name)
                    .font(.largeTitle)
                
                Spacer()
                
                Image(systemName: "heart") // 즐겨찾기 버튼
                    .font(.title2)
                    .foregroundColor(.lightRed)
                    .frame(width: 32, height: 32)
            }
            
            Text(splitText(product.description))
                .foregroundColor(.gray)
        }
    }
    
    var priceInfo: some View {
        HStack {
            Text("₩")
            + Text("\(product.price)")
                .font(.title)
                .fontWeight(.medium)
            
            Spacer()
        }
    }
    
    var orderButton: some View { // 주문하는 버튼
        Button(action: {
            // some action
        }) {
            Capsule()
                .fill(Color.lightRed)
                // 너비는 주어진 공간을 최대로 사용, 높이는 최소 30, 최대 60으로 지정
                .frame(maxWidth: .infinity, minHeight: 30, maxHeight: 60)
                .overlay(Text("주문하기")
                    .font(.system(size: 23))
                    .fontWeight(.medium)
                    .foregroundColor(.white))
                .padding(.vertical, 10)
        }
    }
    
    // MARK: Func
    /* 한 문장으로 길게 구성된 텍스트를 화면에 적절하게 나타내기 위해 두 줄로 나누어 주는 기능 */
    
    func splitText(_ text: String) -> String {
        guard !text.isEmpty else { return text }
        let centerIdx = text.index(text.startIndex, offsetBy: text.count / 2)
        let centerSpaceIdx = text[..<centerIdx].lastIndex(of: " ") ?? text[centerIdx...].firstIndex(of: " ") ?? text.index(before: text.endIndex)
        let afterSpaceInx = text.index(after: centerSpaceIdx)
        let lhsString = text[..<afterSpaceInx].trimmingCharacters(in: .whitespaces)
        let rhsString = text[afterSpaceInx...].trimmingCharacters(in: .whitespaces)
        
        return String(lhsString + "\n" + rhsString)
    }
}

// MARK: Preview
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: productList[0])
    }
}
