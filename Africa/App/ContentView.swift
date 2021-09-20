//
//  ContentView.swift
//  Africa
//
//  Created by Nic Deane on 19/9/21.
//

import SwiftUI

struct ContentView: View {
  
  let animals: [Animal] = Bundle.main.decode("animals.json")
  
  var body: some View {
    NavigationView {
      List {
        CoverImageView()
          .frame(height: 300)
          .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)) // Removes padding from around list row
        ForEach(animals) { animal in
          NavigationLink(destination: AnimalDetailView(animal: animal)) {
            AnimalListItemView(animal: animal)
          } //: LINK
        }
      } //: LIST
      .navigationBarTitle("Africa", displayMode: .large)
    } //: NAVIGATION
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
