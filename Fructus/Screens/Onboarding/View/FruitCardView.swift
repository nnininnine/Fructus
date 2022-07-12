//
//  FruitCardView.swift
//  Fructus
//
//  Created by 7Peaks on 12/7/2565 BE.
//

import SwiftUI

struct FruitCardView: View {
  // MARK: Properties

  @StateObject private var vm: FruitCardViewModel

  init(fruit: Fruit) {
    _vm = StateObject(wrappedValue: FruitCardViewModel(fruit: fruit))
  }

  // MARK: Body

  var body: some View {
    VStack(spacing: 20) {
      Spacer()
      // Image
      Image(vm.fruit.image)
        .resizable()
        .scaledToFit()
        .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
        .scaleEffect(vm.isAnimating ? 1 : 0.6)
      // Title
      Text(vm.fruit.title)
        .foregroundColor(.white)
        .font(.largeTitle)
        .fontWeight(.heavy)
        .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)

      // Headline
      Text(vm.fruit.headline)
        .foregroundColor(.white)
        .multilineTextAlignment(.center)
        .padding(.horizontal, 16)
        .frame(maxWidth: 480)

      // Start button
      StartButtonView(action: vm.startButtonAction)

      Spacer()
    } //: VStack
    .background(LinearGradient(gradient: Gradient(colors: vm.fruit.gradientColors), startPoint: .top, endPoint: .bottom))
    .cornerRadius(20)
    .onAppear(perform: vm.onAppear)
  }
}

struct FruitCardView_Previews: PreviewProvider {
  static var previews: some View {
    FruitCardView(fruit: fruitsData.first!)
      .previewLayout(.fixed(width: 320, height: 640))
  }
}
