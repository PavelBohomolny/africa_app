//
//  MapView.swift
//  Africa
//
//  Created by Pavel Bohomolnyi on 15/06/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoneLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoneLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        //        Map(coordinateRegion: $region)
        
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {
            item in
            
            // Variant 1 - MARKER
            // MapMarker(coordinate: item.location, tint: .accentColor)
            
            // Variant 2 - PIN
            // MapPin(coordinate: item.location, tint: .accentColor)
            
            // Variant 3 - CUSTOM
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
