//
//  Location.swift
//  WeatherApp
//
//  Created by Rent Advisor on 22/01/18.
//  Copyright © 2018 nvjuanddl. All rights reserved.
//

import Foundation

struct Location {

    let city: String
    let country: String
    let longitude: Double
    let latitude: Double
    
    init(locationData: [String: AnyObject]) {
        city = locationData["name"] as! String
        
        let coordDict = locationData["coord"] as! [String: AnyObject]
        longitude = coordDict["lon"] as! Double
        latitude = coordDict["lat"] as! Double

        let sysDict = locationData["sys"] as! [String: AnyObject]
        country = sysDict["country"] as! String
    }
}
