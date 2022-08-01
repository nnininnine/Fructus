//
//  SourceLinkView.swift
//  Fructus
//
//  Created by 7Peaks on 1/8/2565 BE.
//

import SwiftUI

struct SourceLinkView: View {
  // MARK: - Properties

  let destinationLink: URL? = URL(string: "https://wikipedia.com")

  // MARK: - Body

  var body: some View {
    GroupBox {
      HStack {
        Text("Content Source")
        Spacer()
        Link("Wikipedia", destination: destinationLink!)
        Image(systemName: "arrow.up.right.square")
      } //: HStack
      .font(.footnote)
    }
  }
}

struct SourceLinkView_Previews: PreviewProvider {
  static var previews: some View {
    SourceLinkView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
