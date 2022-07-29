//
//  FruitRowView.swift
//  Fructus
//
//  Created by 7Peaks on 29/7/2565 BE.
//

import SwiftUI

struct FruitRowView: View {
  // MARK: - Properties

  var fruit: Fruit

  // MARK: - Body

  var body: some View {
    HStack {
      Image(fruit.image)
        .renderingMode(.original)
        .resizable()
        .scaledToFit()
        .frame(width: 80, height: 80, alignment: .center)
        .shadow(color: .black.opacity(0.3), radius: 3, x: 2, y: 2)
        .background(
          LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(8)

      VStack(alignment: .leading, spacing: 5) {
        Text(fruit.title)
          .font(.title2)
          .bold()
        Text(fruit.headline)
          .font(.caption)
          .foregroundColor(.secondary)
      } //: VStack
    } //: HStack
  }
}

struct FruitRowView_Previews: PreviewProvider {
  static var previews: some View {
    FruitRowView(fruit: fruitsData[0])
      .previewLayout(.sizeThatFits)
      .padding()
//      .preferredColorScheme(.dark)
  }
}
