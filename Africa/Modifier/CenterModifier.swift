//
//  CenterModifier.swift
//  Africa
//
//  Created by Nic Deane on 22/9/21.
//

import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
