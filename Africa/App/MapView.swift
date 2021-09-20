//
//  MapView.swift
//  Africa
//
//  Created by Nic Deane on 19/9/21.
//

import SwiftUI
import MapKit

struct MapView: View {
  
  @State private var region: MKCoordinateRegion = {
    var mapCoordinates = CLLocationCoordinate2D(latitude: 6.00286, longitude: 16.4377599)
    var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
    var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
    
    return mapRegion
  }()
  
  let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
  
  var body: some View {
    // 1. Basic Map
    // Map(coordinateRegion: $region)
    
    // 2. Advanced Map
    Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
      // (A) PIN: Old style (always static)
      // MapPin(coordinate: item.location, tint: .accentColor)
      
      // (B) Marker: New style (always static)
      // MapMarker(coordinate: item.location, tint: .accentColor)
      
      // (C) Custom Basic Annotation (can be interactive)
      MapAnnotation(coordinate: item.location) {
        Image("logo")
          .resizable()
          .scaledToFit()
          .frame(width: 32, height: 32, alignment: .center)
      }
    })
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView()
  }
}
