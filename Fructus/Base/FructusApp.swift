//
//  FructusApp.swift
//  Fructus
//
//  Created by 7Peaks on 12/7/2565 BE.
//

import SwiftUI

@main
struct FructusApp: App {
  @AppStorage("isOnboarding") var isOnboarding: Bool = true

  var body: some Scene {
    WindowGroup {
      switch isOnboarding {
      case true:
        OnboardingView()
      case false:
        HomeView()
      }
    }
  }
}
