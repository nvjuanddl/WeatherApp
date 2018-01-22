//
//  ViewController.swift
//  WeatherApp
//
//  Created by Rent Advisor on 18/01/18.
//  Copyright © 2018 nvjuanddl. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,SearchSelectionDelegate, CalculateDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    //@IBOutlet weak var textField: UITextField!
    @IBOutlet weak var averageLabel: UILabel!
    @IBOutlet weak var varianceLabel: UILabel!
    var citySearch : SearchCityView?
    var calculate = Calculate()
    var cityA : [NSDictionary]{
        return City().allGeneralWeather()
    }
    
    override func viewDidLoad() {
        citySearch = SearchCityView.instanceFromNib() as? SearchCityView
        citySearch?.selectionDelegate = self
        citySearch?.calculateDelegate = self
        citySearch?.frame = CGRect(x: 16.0, y: 16.0, width: view.widthValue - 32.0, height: 48.0)
        view?.addSubview(citySearch!)
    }
    
    func didSelect(city: String) {
        var average : Double = 0.0
        var variance : Double = 0.0
        for item in cityA{
            if city.lowercased().trimmingCharacters(in: .whitespaces) == (item.value(forKey: "nameCity") as? String)?.lowercased().trimmingCharacters(in: .whitespaces){
                print(city)
                (average,variance) = (calculate.calculate(itemWeather: item))
            }
        }
        
        updateLabels(average: String(average), variance: String(variance))
    }
    
    func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent) {
        citySearch?.heightValue = 48.0
        citySearch?.endEditing(true)
    }
    
    func didSelect(latitude infoLat: Double, longitude infoLog: Double, at index: Int) {
        let coordinates = CLLocationCoordinate2DMake(infoLat, infoLog)
        mapView?.setCenter(coordinates, animated: true)
    }
    
    func updateLabels(average : String , variance: String) {
        averageLabel.text = average
        varianceLabel.text = variance
    }
}
