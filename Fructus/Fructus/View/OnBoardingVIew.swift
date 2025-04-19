//
//  OnBoardingVIew.swift
//  Fructus
//
//  Created by Begench on 19.04.2025.
//

import SwiftUI

struct OnBoardingVIew: View {
    var body: some View {
        TabView {
            FruitCardView()
            FruitCardView()
            FruitCardView()
            FruitCardView()
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

struct OnBoardingVIew_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingVIew()
        
    }
}
