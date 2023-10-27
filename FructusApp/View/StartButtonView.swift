//
//  StartButtonView.swift
//  FructusApp
//
//  Created by Prakhar Agarwal on 26/10/23.
//

import SwiftUI

struct StartButtonView: View {
    
    //mark:- properties
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //mark:- body
    
    var body: some View {
        
        Button(action: {
           // print("Exit the onboarding")
            isOnboarding = false
        })
        {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle") 
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
                
            
        }//:button
        .accentColor(Color.white)
    }
}

#Preview {
    StartButtonView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        .previewLayout(.sizeThatFits)
}
