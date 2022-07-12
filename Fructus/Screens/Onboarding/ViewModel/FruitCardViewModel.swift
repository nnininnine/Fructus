//
//  FruitCardViewModel.swift
//  Fructus
//
//  Created by 7Peaks on 12/7/2565 BE.
//

import SwiftUI

class FruitCardViewModel: ObservableObject {
  @Published var fruit: Fruit
  @Published var isAnimating: Bool = false

  init(fruit: Fruit) {
    self.fruit = fruit
  }

  func onAppear() {
    withAnimation(.easeOut(duration: 0.5)) {
      isAnimating = true
    }
  }

  func startButtonAction() {
    print("tap start with: \(fruit.title)")
  }
}
