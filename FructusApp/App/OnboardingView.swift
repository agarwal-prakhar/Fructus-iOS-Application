//
//  OnboardingView.swift
//  FructusApp
//
//  Created by Prakhar Agarwal on 26/10/23.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - properties
    var fruits: [Fruit] = fruitsData
    //MARK: - Body

    var body: some View {
        TabView{
            ForEach(fruits[0...5]){
                item in
                FruitCardView(fruit: item)
            }//MARK: -loop
          
        }//MARK: - Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - preview

#Preview {
    OnboardingView(fruits: fruitsData )
}
