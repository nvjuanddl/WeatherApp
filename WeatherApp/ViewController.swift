//
//  ViewController.swift
//  WeatherApp
//
//  Created by Rent Advisor on 18/01/18.
//  Copyright © 2018 nvjuanddl. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var averageLabel: UILabel!
    @IBOutlet weak var varianceLabel: UILabel!
    var city : City{
        return City()
    }

    var calculate = Calculate()
    
    
    @IBAction func onActionButtonPressed(_ sender: UIButton) {
        textField?.resignFirstResponder()
        var average : Double = 0.0
        var variance : Double = 0.0
        
        let arrayItemLocation = city.allGeneralLocation()
        let arrayItemWeather = city.allGeneralWeather()
        
        for item in arrayItemLocation{
            if textField.text?.lowercased().trimmingCharacters(in: .whitespaces) == item.value(forKey: "nameCity") as? String{
                guard let lgnString = item.value(forKey: "lng") as? String else {return}
                guard let latString = item.value(forKey: "lat") as? String else {return}
                moveMap(toCoordinates: CLLocationCoordinate2DMake(Double(latString)!,Double(lgnString)!))
            }
        }
        
        for item in arrayItemWeather{
            if textField.text?.lowercased().trimmingCharacters(in: .whitespaces) == item.value(forKey: "nameCity") as? String{
                (average,variance) = (calculate.calculate(itemWeather: item))
            }
        }
    
        updateLabels(average: String(average), variance: String(variance))
    }
    
    func updateLabels(average : String , variance: String) {
        averageLabel.text = average
        varianceLabel.text = variance
    }
    
    func moveMap(toCoordinates coordinates: CLLocationCoordinate2D) {
        mapView?.setCenter(coordinates, animated: true)
    }
}
