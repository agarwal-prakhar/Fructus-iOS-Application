//
//  OnboardingView.swift
//  FructusApp
//
//  Created by Prakhar Agarwal on 26/10/23.
//

import SwiftUI

struct OnboardingView: View {
    //mark:properties
    
    //mark: body
    var body: some View {
        TabView{
            ForEach(0..<5){
                item in 
                //FruitCardView()
                Text("Cards")
            }//: loop
          
        }// Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//mark preview

#Preview {
    OnboardingView()
}
