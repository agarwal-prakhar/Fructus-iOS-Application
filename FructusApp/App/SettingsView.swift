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
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    )
                    {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most Fruits are naturally low in fat, sodium, and calories. None have cholestrol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    //MARK: SECTION 2
                    
                    //MARK: SECTION 3
                    
                    GroupBox(
                        label:
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    )
                    {
                        Divider().padding(.vertical, 4)
                       
                        SettingsRowView(labelKey: "Developer", labelValue: "Prakhar Agarwal")
//                        HStack{
//                            Text("Developer").foregroundColor(Color.gray)
//                            Spacer()
//                            Text("Prakhar Agarwal")
//                        }
                        
                    }
                    
                    
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
