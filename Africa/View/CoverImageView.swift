//
//  CoverImageView.swift
//  Africa
//
//  Created by Nic Deane on 19/9/21.
//

import SwiftUI

struct CoverImageView: View {
  var body: some View {
    TabView {
      ForEach(0 ..< 5) { item in
        Image("cover-lion")
          .resizable()
          .scaledToFit()
      } //: LOOP
    } //: TAB
    .tabViewStyle(PageTabViewStyle())
  }
}

struct CoverImageView_Previews: PreviewProvider {
  static var previews: some View {
    CoverImageView()
      .previewLayout(.fixed(width: 400, height: 300))
  }
}
