//
//  OnboardingView.swift
//  Fructus
//
//  Created by 7Peaks on 12/7/2565 BE.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: Properties

  @StateObject private var vm: OnboardingViewModel = .init()

  // MARK: Body

  var body: some View {
    TabView {
      ForEach(vm.fruits[0 ..< 5]) { fruit in
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
