//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Nic Deane on 19/9/21.
//

import Foundation

extension Bundle {
  func decode(_ file: String) -> [CoverImage] { // The underscore negates the need to enter the paramater each time we call the function (in this case 'file').
    // 1. Locate the json file
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Failed to locate \(file) in bundle") // Will force crash app with error message (should use error handling instead).
    }
    
    // 2. Create a property for the data
    guard let data = try? Data(contentsOf: url) else { // Attempts to put json data into a constant as actual data (because the json could be corrupt).
      fatalError("Failed to load \(file) from bundle")
    }
    
    // 3. Create a decoder
    let decoder = JSONDecoder()
    
    // 4. Create a property for the decoded data
    guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
      fatalError("Failed to load \(file) from bundle")
    }
    
    // 5. Return the ready to use data
    return loaded
  }
}
