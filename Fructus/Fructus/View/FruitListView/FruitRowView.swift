//
//  FruitRowView.swift
//  Fructus
//
//  Created by Begench on 19.04.2025.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruit: Fruit
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black.opacity(0.15) ,radius: 3, x: 2, y: 2)
                .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            VStack (alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }//- Vstack
        }//- HStack
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0 ])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

