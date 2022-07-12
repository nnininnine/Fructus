//
//  FruitModel.swift
//  Fructus
//
//  Created by 7Peaks on 12/7/2565 BE.
//

import SwiftUI

typealias Fruits = [Fruit]

struct Fruit: Identifiable {
  var id: UUID = .init()
  var title: String
  var headline: String
  var image: String
  var gradientColors: [Color]
  var description: String
  var nutrition: [String]
}
