//
//  SettingsLabelView.swift
//  FructusApp
//
//  Created by Prakhar Agarwal on 31/10/23.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
