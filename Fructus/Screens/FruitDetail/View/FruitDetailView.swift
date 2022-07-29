//
//  FruitDetailView.swift
//  Fructus
//
//  Created by 7Peaks on 29/7/2565 BE.
//

import SwiftUI

struct FruitDetailView: View {
  // MARK: - Properties

  var fruit: Fruit

  // MARK: - Body

  var body: some View {
    Text(fruit.title)
  }
}

struct FruitDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FruitDetailView(fruit: fruitsData[0])
  }
}
