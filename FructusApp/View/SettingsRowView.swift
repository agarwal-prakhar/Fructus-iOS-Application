//
//  SetingsRowView.swift
//  FructusApp
//
//  Created by Prakhar Agarwal on 31/10/23.
//

import SwiftUI

struct SettingsRowView: View {
    
    
    var labelKey: String
    var labelValue: String
    
    var body: some View {
        HStack{
            Text(labelKey).foregroundColor(Color.gray)
            Spacer()
            Text(labelValue)
        }
    }
}

#Preview {
    SettingsRowView(labelKey: "Developer", labelValue: "Prakhar Agarwal")
        .previewLayout(.sizeThatFits)
        .padding()
}
