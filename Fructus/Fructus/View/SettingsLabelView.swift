//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Begench on 19.04.2025.
//

import SwiftUI

struct SettingsLabelView: View {
    var label: String
    var imageText: String
    var body: some View {
        HStack {
            Text(label.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: imageText)
        }
    }
}
