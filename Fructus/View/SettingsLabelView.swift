//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by İmat Gökaslan on 26.08.2024.
//

import SwiftUI

struct SettingsLabelView: View {
    var LabelText: String
    var LabelImage: String
    var body: some View {
        HStack {
            Text(LabelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: LabelImage)
        }
    }
}

#Preview {
    SettingsLabelView(LabelText: "Fructus", LabelImage: "info.circle")
}
