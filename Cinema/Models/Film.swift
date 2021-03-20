//
//  Film.swift
//  Cinema
//
//  Created by Finnis on 20/03/2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Film: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var category: String
    var length: String
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
