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
          NavigationLink(destination: FruitDetailView(fruit: item)) {
            FruitRowView(fruit: item)
              .padding(.vertical, 8)
          }
        }
      } //: List
      .listStyle(.inset)
      .navigationTitle("Fruits")
      .toolbar {
        Button(action: vm.showSettings, label: {
          Image(systemName: "slider.horizontal.3")
            .font(.body.bold())
        })
      }
    } //: NavigationView
    .navigationViewStyle(.columns)
    .sheet(isPresented: $vm.isShowingSettings, content: { SettingsView() })
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView(vm: .init(fruits: fruitsData))
  }
}
