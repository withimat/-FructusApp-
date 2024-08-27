//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by İmat Gökaslan on 25.08.2024.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit
    @State private var isAnimating : Bool = false
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.2), radius: 8,x: 6,y: 8)
                .padding(.vertical,20)
                .scaleEffect(isAnimating ? 1.0 : 0.3)
            
        }//:ZSTCAK
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeInOut(duration: 0.5)){
                isAnimating = true
            }
        }
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[2])
        .previewLayout(.fixed(width: 375, height: 440))
}
