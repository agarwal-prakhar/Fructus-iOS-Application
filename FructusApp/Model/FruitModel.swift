//
//  FruitModel.swift
//  FructusApp
//
//  Created by Prakhar Agarwal on 26/10/23.
//

import SwiftUI

//MARK: - fRUITS data model

struct Fruit: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
