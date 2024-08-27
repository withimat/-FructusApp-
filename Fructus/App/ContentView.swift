//
//  ContentView.swift
//  Fructus
//
//  Created by İmat Gökaslan on 23.08.2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings:Bool = false
    //MARK: - BODY
    var body: some View {
        NavigationView{
             
                List{
                    ForEach(fruits){ item in
                        NavigationLink {
                            DetailsView(fruit: item)
                        } label: {
                            FruitRowView(fruit: item)
                                .padding(.vertical,4)
                        }

                        
                        
                            
                    }
                }
                .navigationTitle("Fruits")
                .navigationBarItems(trailing: Button(action: {
                    isShowingSettings = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                })//:Button
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingsView()
                    })
                )
                
        } //: NAVIGATION
    }
}
//MARK: -PREVIEW
#Preview {
    ContentView(fruits: fruitsData)
}
