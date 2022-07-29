//
//  HomeViewModel.swift
//  Fructus
//
//  Created by 7Peaks on 29/7/2565 BE.
//

import SwiftUI

class HomeViewModel: ObservableObject {
  // MARK: - Properties

  var fruits: Fruits = fruitsData

  // MARK: - Init

  init() {}

  init(fruits: Fruits) {
    self.fruits = fruits
  }

  // MARK: - Methods
}
