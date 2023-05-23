//
//  MapView.swift
//  AfricaSwiftUI
//
//  Created by Sergey on 20.04.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        // MARK: - No1 BASIC MAP
        // Map(coordinateRegion: $region)
        // MARK: - No1 ADVANCED MAP
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {
            item in
            // A - OLD STYLE
            //MapPin(coordinate: item.location, tint: .accentColor)
            // B - MARKER
            //MapMarker(coordinate: item.location, tint: .accentColor)
            // C - CUSTOM ANNOTATION
//            MapAnnotation(coordinate: item.location) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: .center)
            // D - INTERACTION ANNOTATION
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            } // END OF ANNOTATION
        })
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
