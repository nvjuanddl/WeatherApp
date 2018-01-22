//
//  LocationGetter.swift
//  WeatherApp
//
//  Created by Rent Advisor on 22/01/18.
//  Copyright © 2018 nvjuanddl. All rights reserved.
//

import Foundation

protocol LocationGetterDelegate {
    func didGetLocation(location: Location)
    func didNotGetLocation(error: NSError)
}


class LocationGetter {
    
    private let openLocationMapBaseURL = "http://api.openweathermap.org/data/2.5/weather"
    private let openLocationMapAPIKey = "06db44f389d2172e9b1096cdce7b051c"
    
    private var delegate: LocationGetterDelegate
    
    init(delegate: LocationGetterDelegate) {
        self.delegate = delegate
    }
    
    func getLocationByCity(city: String) {
        let locationRequestURL = URL(string: "\(openLocationMapBaseURL)?APPID=\(openLocationMapAPIKey)&q=\(city)")!
        getLocation(locationRequestURL: locationRequestURL)
    }
    
    func getLocationByCoordinates(latitude: Double, longitude: Double) {
        let locationRequestURL = URL(string: "\(openLocationMapBaseURL)?APPID=\(openLocationMapAPIKey)&lat=\(latitude)&lon=\(longitude)")!
        getLocation(locationRequestURL: locationRequestURL)
    }
    
    private func getLocation(locationRequestURL: URL) {
        let session = URLSession.shared
        session.configuration.timeoutIntervalForRequest = 3
        
        
        let dataT = session.dataTask(with: locationRequestURL) {
            data, response, error in
            if let networkError = error {
                self.delegate.didNotGetLocation(error: networkError as NSError)
            }
            else {
                do {
                    let locationData = try JSONSerialization.jsonObject(
                        with: data!,
                        options: .mutableContainers) as! [String: AnyObject]
                    let location = Location(locationData: locationData)
                    self.delegate.didGetLocation(location: location)
                }
                catch let jsonError as NSError {
                    self.delegate.didNotGetLocation(error: jsonError)
                }
            }
        }
        dataT.resume()
    }
    
}

