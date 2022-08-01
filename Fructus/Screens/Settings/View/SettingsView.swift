//
//  SettingsView.swift
//  Fructus
//
//  Created by 7Peaks on 1/8/2565 BE.
//

import SwiftUI

struct SettingsView: View {
  // MARK: - Properties

  @Environment(\.presentationMode) var presentationMode
  
  // MARK: - Body

  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        } //: VStack
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
          Button(action: {
            presentationMode.wrappedValue.dismiss()
          }, label: {
            Image(systemName: "xmark")
          })
        }
        .padding()
      }
    }
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
      .preferredColorScheme(.dark)
  }
}
