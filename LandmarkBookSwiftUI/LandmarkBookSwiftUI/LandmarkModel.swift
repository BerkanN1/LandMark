//
//  LandmarkModel.swift
//  LandmarkBookSwiftUI
//
//  Created by BERKAN NALBANT on 25.05.2021.
//

import SwiftUI
import CoreLocation

struct Landmark : Identifiable {
    
    var id : Int
    var name : String
    var imageName : String
    var country : String
    var category : String
    
    var coordinates : Coordinates
    var locationCoordinate : CLLocationCoordinate2D{ CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
}

struct Coordinates{
    var latitude : Double
    var longitude : Double
}

let eiffelLandmark = Landmark(id: 0, name: "Eiffel", imageName: "eiffel", country: "France", category: "Tower", coordinates: Coordinates(latitude: 48.8583701, longitude: 2.2922926))
let colloseumLandmark = Landmark(id: 1, name: "Colloseum", imageName: "colosseum", country: "Italy", category: "Historical Area", coordinates: Coordinates(latitude: 41.8902102, longitude: 12.4900422))
let londonbridgeLandmark = Landmark(id: 2, name: "London Bridge", imageName: "londonbridge", country: "England", category: "Bridge", coordinates: Coordinates(latitude: 51.5079111, longitude: -0.0899163))
let pisaLandmark = Landmark(id: 3, name: "Pisa Tower", imageName: "pisa", country: "Italy", category: "Tower", coordinates: Coordinates(latitude: 43.7229503, longitude: 10.3943062))
let sdneyLandmark = Landmark(id: 4, name: "Sydney Opera House", imageName: "sydney", country: "Australia" ,category: "Opera House", coordinates: Coordinates(latitude: -33.8567844, longitude: 151.213108))
let landmarkArray = [eiffelLandmark,colloseumLandmark,londonbridgeLandmark,pisaLandmark,sdneyLandmark]
