//
//  OnboardingView.swift
//  FructusApp
//
//  Created by Prakhar Agarwal on 26/10/23.
//

import SwiftUI

struct OnboardingView: View {
    //mark:properties
    var fruits: [Fruit] = fruitsData
    //mark: body
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){
                item in
                FruitCardView(fruit: item)
            }//: loop
          
        }// Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//mark preview

#Preview {
    OnboardingView(fruits: fruitsData )
}
