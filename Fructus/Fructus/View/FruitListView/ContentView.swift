//
//  ContentView.swift
//  Fructus
//
//  Created by Begench on 18.04.2025.
//

import SwiftUI

struct ContentView: View {
   
    @State var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 5)
                    }
                }
           
            } //- List
            .navigationTitle("fruits")
            .toolbar(content: {
                Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }
                .sheet(isPresented: $isShowingSettings) {
                    SetingsView()
                }
            })
        } //- Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}
