//
//  OnboardingView.swift
//  Fructus
//
//  Created by İmat Gökaslan on 23.08.2024.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
                
            }
            
            
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
        
    }
}
//MARK: -PREVIEW
#Preview {
    OnboardingView(fruits: fruitsData)
}
