//
//  StartButtonView.swift
//  Fructus
//
//  Created by Begench on 19.04.2025.
//

import SwiftUI

struct StartButtonView: View {
    
    var body: some View {
        Button(action: {
            print("Button tapped")
        }) {
            HStack(spacing: 10) {
                Text("Start")
                FRImages.rightArrow
                    .imageScale(.large)
            }//- HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(.white ,lineWidth: 1.25)) 
        } //- Button
        .tint(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
