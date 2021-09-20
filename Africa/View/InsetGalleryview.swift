//
//  InsetGalleryview.swift
//  Africa
//
//  Created by Nic Deane on 20/9/21.
//

import SwiftUI

struct InsetGalleryview: View {
  
  let animal: Animal
  
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(alignment: .center, spacing: 15) {
        ForEach(animal.gallery, id: \.self) { item in
          Image(item)
            .resizable()
            .scaledToFit()
            .frame(height: 200)
            .cornerRadius(12)
        } //: Loop
      } //: Hstack
    } //: ScrollView
  }
}

struct InsetGalleryview_Previews: PreviewProvider {
  
  static let animals: [Animal] = Bundle.main.decode("animals.json")
  
  static var previews: some View {
    InsetGalleryview(animal: animals[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
