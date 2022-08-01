//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by 7Peaks on 1/8/2565 BE.
//

import SwiftUI

struct FruitNutrientsView: View {
  // MARK: - Properties

  var fruit: Fruit
  let nutrients: [String] = [
    "Energy",
    "Sugar",
    "Fat",
    "Protein",
    "Vitamins",
    "Minerals"
  ]

  // MARK: - Body

  var body: some View {
    GroupBox {
      DisclosureGroup("Nutritional value per 100g") {
        ForEach(0 ..< nutrients.count, id: \.self) { index in
          Divider()
            .padding(.vertical, 2)

          HStack(alignment: .top) {
            Group {
              Image(systemName: "info.circle")
              Text(nutrients[index])
            }
            .foregroundColor(fruit.gradientColors[1])
            .font(.body.bold())

            Spacer(minLength: 25)

            Text(fruit.nutrition[index])
              .multilineTextAlignment(.trailing)
          }
        }
      }
    }
  }
}

struct FruitNutrientsView_Previews: PreviewProvider {
  static var previews: some View {
    FruitNutrientsView(fruit: fruitsData[0])
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 375, height: 480))
      .padding()
  }
}
