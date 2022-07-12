//
//  StartButtonView.swift
//  Fructus
//
//  Created by 7Peaks on 12/7/2565 BE.
//

import SwiftUI

struct StartButtonView: View {
  // MARK: Properties

  var action: () -> Void

  // MARK: Body

  var body: some View {
    Button {
      action()
    } label: {
      HStack(spacing: 8) {
        Text("Start")

        Image(systemName: "arrow.right.circle")
          .imageScale(.large)
      }
      .padding(.horizontal, 16)
      .padding(.vertical, 10)
      .background(
        Capsule().strokeBorder(.white, lineWidth: 1.25)
      )
    }
    .tint(.white)
  }
}

struct StartButtonView_Previews: PreviewProvider {
  static var previews: some View {
    StartButtonView(action: {})
      .preferredColorScheme(.dark)
      .previewLayout(.sizeThatFits)
  }
}
