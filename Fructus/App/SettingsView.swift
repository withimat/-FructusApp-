//
//  SettingsView.swift
//  Fructus
//
//  Created by İmat Gökaslan on 26.08.2024.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            ScrollView (.vertical,showsIndicators: false){
                VStack(spacing: 20) {
                    //MARK: -SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(LabelText: "Fructus", LabelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical,4)
                        HStack(alignment:.center,spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(8)
                           Text("Most fruits are naturally low in fat,sodium and calories.None have cholesterol.Fruits are sources of many essantial nutrients, including potassium , dietaryfiber, vitamins and much more.")
                                .font(.footnote)
                                
                        }
                    }
                    
                    //MARK: -SECTION 2
                    
                    //MARK: -SECTION 3
                    
                    
                    
                    
                    
                }
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                })
                )
                .padding()
            }//: SCROLL
            
        }//: NAVI
        
    }
}

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
