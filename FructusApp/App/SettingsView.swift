//
//  SettingsView.swift
//  FructusApp
//
//  Created by Prakhar Agarwal on 31/10/23.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: properties
    
    @Environment(\.presentationMode) var presentationMode
    //MARK: BODY
    
    
    var body: some View {
        
        NavigationView{    
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    //MARK: SECTION 1
                    
                    GroupBox(
                        label:
//                            HStack {
//                                Text("Fructus".uppercased()).fontWeight(.bold)
//                                Spacer()
//                                Image(systemName: "info.circle")
//                                
//                            }
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    )
                    {
                        Text("Hello, World!")
                    }
                    //MARK: SECTION 2
                    
                    //MARK: SECTION 3
                    
                }//: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing: 
                        Button(action: {
                        presentationMode.wrappedValue.dismiss()
                        }){
                            Image(systemName: "xmark")
                            
                        }
                )
                .padding()
            }//: SCROLLVIEW
        }//: NAVIGATION
    
    }
}

#Preview {
    SettingsView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    
}
