//
//  HomeView.swift
//  Fructus
//
//  Created by 7Peaks on 12/7/2565 BE.
//

import SwiftUI

struct HomeView: View {
  // MARK: - Properties

  var fruits: Fruits = fruitsData

  // MARK: - Body

  var body: some View {
    NavigationView {
      List {
        ForEach(fruits.shuffled()) { item in
          FruitRowView(fruit: item)
            .padding(.vertical, 8)
        }
      } //: List
      .listStyle(.inset)
      .navigationTitle("Fruits")
    } //: NavigationView
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView(fruits: fruitsData)
  }
}
