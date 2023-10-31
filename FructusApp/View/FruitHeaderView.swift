//
//  FruitHeaderView.swift
//  FructusApp
//
//  Created by Prakhar Agarwal on 28/10/23.
//

import SwiftUI

struct FruitHeaderView: View {
    
    //MARK: - properties
    
    var fruit: Fruit
    
    @State private var isAnimatingImage: Bool = false
    //MARK: - body
    
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }//ZSTACK
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 375, height: 440))
}
