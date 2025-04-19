//
//  FruitCardView.swift
//  Fructus
//
//  Created by Begench on 19.04.2025.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - Proporites
    
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    

    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                Text(fruit.title)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15) ,radius: 2, x: 2, y: 2)
                
                Text(fruit.headline)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
                 
            } //- VStack
            
            
            
        } // - ZStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity,
               minHeight: 0, maxHeight: .infinity,
               alignment: .center)
        .background(LinearGradient(
            colors: fruit.gradientColors,
            startPoint: .top,
            endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)

    } // - View
} // - Body


//MARK: - Previeew
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[8])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
