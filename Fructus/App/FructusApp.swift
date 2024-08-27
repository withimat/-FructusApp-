//
//  FructusApp.swift
//  Fructus
//
//  Created by İmat Gökaslan on 23.08.2024.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
            }
           
        }
    }
}
