//
//  DetailsView.swift
//  Fructus
//
//  Created by İmat Gökaslan on 25.08.2024.
//

import SwiftUI

struct DetailsView: View {
    var fruit: Fruit
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(alignment:.center,spacing:20){
                    //: HEADER
                   FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment:.leading,spacing:20){
                        //:TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        //:HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            
                        
                        
                        //:NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        
                        
                        //:SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                            
                        
                        
                        
                        //:DESCR
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //:LINK
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    
                        
                    }//:VSTACK
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640,alignment: .center)
                    
                }//:VSTACK
                .navigationBarTitle(fruit.title,displayMode: .inline)
                .navigationBarHidden(true)
            }//:SCROOLVIEW
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
    }
}

#Preview {
    DetailsView(fruit: fruitsData[1])
}
