//
//  HomeViewModel.swift
//  Fructus
//
//  Created by 7Peaks on 29/7/2565 BE.
//

import SwiftUI

class HomeViewModel: ObservableObject {
  // MARK: - Properties

  @Published var isShowingSettings: Bool = false
  var fruits: Fruits = fruitsData

  // MARK: - Init

  init() {}

  init(fruits: Fruits) {
    self.fruits = fruits
  }

  // MARK: - Methods

  func showSettings() {
    isShowingSettings = true
  }
}
