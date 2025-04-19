//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Begench on 19.04.2025.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (alignment: .center, spacing: 20){
                    
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack (alignment: .leading, spacing: 20){
                        
                        //TITle
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        FruitNutriensView(fruit: fruit)
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //LINK
                        LinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//-VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//-Vstack
            }//-ScrollView
            .ignoresSafeArea(edges: .top)
        }//-NavStack
     
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
        
    }
}
