//
//  OnboardingView.swift
//  Fructus
//
//  Created by 7Peaks on 12/7/2565 BE.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: Properties

  // MARK: Body

  var body: some View {
    TabView {
      ForEach(fruitsData) { fruit in
        FruitCardView(fruit: fruit)
          .padding(.horizontal)
      } //: ForEach
    } //: TabView
    .tabViewStyle(.page)
    .padding(.vertical, 20)
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
