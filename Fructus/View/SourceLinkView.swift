//
//  SourceLinkView.swift
//  Fructus
//
//  Created by İmat Gökaslan on 25.08.2024.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source ")
                Spacer()
                Link("WikiPedia",destination: URL(string:"https://www.wikipedia.com")!)
                Link(destination: URL(string: "https://www.wikipedia.com")!, label: {
                    Image(systemName: "arrow.up.right.square")
                })
            }
            .font(.footnote)
            
        }
    }
}

#Preview {
    SourceLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
}
