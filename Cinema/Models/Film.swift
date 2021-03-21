//
//  Film.swift
//  Cinema
//
//  Created by Finnis on 20/03/2021.
//

import Foundation
import CoreLocation

struct Film: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var genre: String
    var runtime: String
    var rating: String
    var description: String
    var imageName: String
    
    var time: String
    var date: String
    var cinema: String
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}
