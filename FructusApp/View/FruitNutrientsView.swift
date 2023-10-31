//
//  FruitNutrientsView.swift
//  FructusApp
//
//  Created by Prakhar Agarwal on 29/10/23.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    //MARK: - Properties
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals" ]
    //MARK: - Body
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutrition value per 100gm"){
                ForEach(0..<nutrients.count,id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                        
                        
                    }
                }
            }// disclosure group
        }//:BOX
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
        .preferredColorScheme(.dark)
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
}
