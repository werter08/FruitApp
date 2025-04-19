//
//  LinkView.swift
//  Fructus
//
//  Created by Begench on 19.04.2025.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
