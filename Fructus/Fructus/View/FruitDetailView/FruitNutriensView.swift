//
//  FruitNutriensView.swift
//  Fructus
//
//  Created by Begench on 19.04.2025.
//

import SwiftUI

struct FruitNutriensView: View {
    
    var fruit: Fruit
    let nutriens: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox() {
            
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutriens.count, id: \.self) { item in
                    Divider().padding(.vertical, 5)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutriens[item])
                        }
                        .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        Spacer(minLength: 50)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                            .fontWeight(.light)
                            
                            
                    }
                    
                }
            }
        }
    }
}

struct FruitNutriensView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutriensView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
