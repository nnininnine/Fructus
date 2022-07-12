//
//  FruitCardView.swift
//  Fructus
//
//  Created by 7Peaks on 12/7/2565 BE.
//

import SwiftUI

struct FruitCardView: View {
  var body: some View {
    VStack(spacing: 20) {
      Spacer()
      // Image
      Image("blueberry")
        .resizable()
        .scaledToFit()
        .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
      // Title
      Text("Blueberry")
        .foregroundColor(.white)
        .font(.largeTitle)
        .fontWeight(.heavy)
        .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)

      // Headline
      Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world.")
        .foregroundColor(.white)
        .multilineTextAlignment(.center)
        .padding(.horizontal, 16)
        .frame(maxWidth: 480)

      // Start button

      Spacer()
    } //: VStack
    .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
    .cornerRadius(20)
  }
}

struct FruitCardView_Previews: PreviewProvider {
  static var previews: some View {
    FruitCardView()
      .previewLayout(.fixed(width: 320, height: 640))
  }
}