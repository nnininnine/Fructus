//
//  HomeView.swift
//  Fructus
//
//  Created by 7Peaks on 12/7/2565 BE.
//

import SwiftUI

struct HomeView: View {
  // MARK: - Properties

  @StateObject var vm: HomeViewModel = .init()

  // MARK: - Body

  var body: some View {
    NavigationView {
      List {
        ForEach(vm.fruits.shuffled()) { item in
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
    HomeView(vm: .init(fruits: fruitsData))
  }
}
