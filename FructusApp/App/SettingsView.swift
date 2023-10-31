//
//  SettingsView.swift
//  FructusApp
//
//  Created by Prakhar Agarwal on 31/10/23.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - properties
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    //MARK: - BODY
    
    
    var body: some View {
        
        NavigationView{    
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    
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
                    //MARK: - SECTION 2
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical,8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.secondary)
                            }
                            
                        }
                        .padding()
                        .background(
                        Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                        )
                    }
                    
                    //MARK: - SECTION 3
                    
                    GroupBox(
                        label:
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    )
                    {
                        
                       
                        SettingsRowView(name: "Developer", content: "Prakhar Agarwal")
                        SettingsRowView(name: "Designer", content: "Prakhar Agarwal")
                        SettingsRowView(name: "Compatibility", content: "iOS 17")
                        SettingsRowView(name: "Website", linkLabel: "Portfolio", linkDestination: "prakharagarwal.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@HRTQuantStrat", linkDestination: "twitter.com/HRTQuantStrat")
                        SettingsRowView(name: "SwiftUI", content: "5.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        
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
