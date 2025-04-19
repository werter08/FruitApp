//
//  FructusApp.swift
//  Fructus
//
//  Created by Begench on 18.04.2025.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnBoardingVIew()
            } else {
                ContentView()
            }
            
        }
    }
}
