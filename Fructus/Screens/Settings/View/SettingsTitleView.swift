//
//  SettingsTitleView.swift
//  Fructus
//
//  Created by 7Peaks on 3/8/2565 BE.
//

import SwiftUI

struct SettingsTitleView: View {
  // MARK: - Properties

  var title: String = "Title"
  var sfImage: String = "photo.circle.fill"

  // MARK: - Body

  var body: some View {
    HStack {
      Text(title.uppercased())
      Spacer()
      Image(systemName: sfImage)
    }
    .foregroundColor(Color(uiColor: .label))
    .font(.system(size: 16, weight: .bold))
  }
}

struct SettingsTitleView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsTitleView()
      .preferredColorScheme(.dark)
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
