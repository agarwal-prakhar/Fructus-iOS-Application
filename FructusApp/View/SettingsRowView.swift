//
//  SetingsRowView.swift
//  FructusApp
//
//  Created by Prakhar Agarwal on 31/10/23.
//

import SwiftUI

struct SettingsRowView: View {
    
    //MARK:  - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if(linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else{
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    Group {
        SettingsRowView(name: "Developer", content: "Prakhar Agarwal")
            .previewLayout(.fixed(width: 375, height: 60))
        .padding()
        SettingsRowView(name: "Website", linkLabel: "iOS Developer", linkDestination: "prakharagarwal.com")
            .previewLayout(.fixed(width: 375, height: 60))
        .padding()
    }
}
