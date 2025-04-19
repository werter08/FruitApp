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
    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                Text("Blubery")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15) ,radius: 2, x: 2, y: 2)
                
                Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world.")
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
            colors: [ .colorBluberyLight, .colorBluberyDark ],
            startPoint: .top,
            endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)

    } // - View
} // - Body


//MARK: - Previeew
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
