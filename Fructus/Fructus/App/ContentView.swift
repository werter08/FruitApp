//
//  ContentView.swift
//  Fructus
//
//  Created by Begench on 18.04.2025.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 5)
                    }
                }
           
            } //- List
            
            .navigationTitle("fruits")
        } //- Navigation
    }
}

#Preview {
    ContentView()
}
