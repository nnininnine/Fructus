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
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 20) {
        // Header
        FruitHeaderView(fruit: fruit)

        VStack(alignment: .leading, spacing: 20) {
          // Title
          Text(fruit.title)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(fruit.gradientColors[1])

          // Headline
          Text(fruit.headline)
            .font(.headline)
            .multilineTextAlignment(.leading)

          // Nutrients

          // SubHeadline
          Text("Learn more about \(fruit.title)".uppercased())
            .bold()
            .foregroundColor(fruit.gradientColors[1])

          // Description
          Text(fruit.description)
            .multilineTextAlignment(.leading)
          // Link
        } //: VStack
        .padding(.horizontal, 20)
        .frame(maxWidth: 640, alignment: .center)
      } //: VStack
    } //: ScrollView
    .navigationBarTitle(fruit.title, displayMode: .inline)
  }
}

struct FruitDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FruitDetailView(fruit: fruitsData[0])
  }
}
