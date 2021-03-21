//
//  CinemaMap.swift
//  Cinema
//
//  Created by Finnis on 21/03/2021.
//

import SwiftUI
import MapKit

struct CinemaAnnotation: Identifiable {
    var coordinate: CLLocationCoordinate2D
    let id = UUID()
}

struct CinemaMap: View {
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.55308670037528, longitude: -0.5243610941746332),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var locationManager = CLLocationManager()
    
    var cinemaAnnotations: [CinemaAnnotation] = [CinemaAnnotation(coordinate: CLLocationCoordinate2D(latitude: 51.55308670037528, longitude: -0.5243610941746332))]
    
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: cinemaAnnotations) { item in
            MapMarker(coordinate: item.coordinate, tint: .accentColor)
        }
        .onAppear {
            locationManager.requestWhenInUseAuthorization()
        }
        .navigationTitle("Pinewood Cinema")
    }
}
