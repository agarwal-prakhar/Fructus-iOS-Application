//
//  ContentView.swift
//  FructusApp
//
//  Created by Prakhar Agarwal on 24/10/23.
//

import SwiftUI

struct ContentView: View { 
    //mark properties
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    //mark body
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(fruits.shuffled()){
                    item in 
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
        
                       
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }){
                        Image(systemName: "slider.horizontal.3")
                    }//: BUTTON
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
                    
            )
        }//navigation

    }
}

#Preview {
    ContentView()
}
