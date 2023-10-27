//
//  FructusAppApp.swift
//  FructusApp
//
//  Created by Prakhar Agarwal on 24/10/23.
//

import SwiftUI

@main
struct FructusAppApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }            
        }
    }
}
