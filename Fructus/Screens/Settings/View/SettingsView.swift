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
          // MARK: - Section 1

          GroupBox(content: {
            Divider()
              .padding(.vertical, 4)
            
            HStack(spacing: 10) {
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(9)
              
              Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                .font(.footnote)
            }
          }, label: {
            SettingsTitleView(title: "Fructus", sfImage: "info.circle")
          })

          // MARK: - Section 2

          // MARK: - Section 3

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
