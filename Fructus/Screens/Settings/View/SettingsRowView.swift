//
//  SettingsRowView.swift
//  Fructus
//
//  Created by 7Peaks on 4/8/2565 BE.
//

import SwiftUI

struct SettingsRowView: View {
  // MARK: - Properties

  var name: String
  var content: String? = nil
  var linkLabel: String? = nil
  var linkDestination: String? = nil

  // MARK: - Body

  var body: some View {
    VStack {
      Divider()
        .padding(.vertical, 4)

      HStack {
        Text(name)
          .foregroundColor(.gray)
        Spacer()
        if let content = content {
          Text(content)
        } else if let linkLabel = linkLabel, let linkDestination = linkDestination {
          Link(linkLabel, destination: URL(string: "https://\(linkDestination)")!)
          Image(systemName: "arrow.up.right.square")
            .foregroundColor(.pink)
        } else {
          EmptyView()
        }
      }
    }
  }
}

struct SettingsRowView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsRowView(name: "name", content: "Content")
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
