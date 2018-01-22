//
//  Calculate.swift
//  WeatherApp
//
//  Created by Rent Advisor on 18/01/18.
//  Copyright © 2018 nvjuanddl. All rights reserved.
//

import Foundation

class Calculate {
    
    var city : City{
        return City()
    }
    
    func calculate(itemWeather : NSDictionary) -> (average: Double, variance: Double){
        
        var arrayWeather : [Double] = []
        
        var average : Double = 0.0
        var variance : Double = 0.0
        
        guard let JanString = itemWeather.value(forKey: "Jan") as? String else{ return (0,0)}
        arrayWeather.append(Double(JanString)!)
        guard let FebString = itemWeather.value(forKey: "Feb") as? String else{ return (0,0)}
        arrayWeather.append(Double(FebString)!)
        guard let MarString = itemWeather.value(forKey: "Mar") as? String else{ return (0,0)}
        arrayWeather.append(Double(MarString)!)
        guard let AprString = itemWeather.value(forKey: "Apr") as? String else{ return (0,0)}
        arrayWeather.append(Double(AprString)!)
        guard let MayString = itemWeather.value(forKey: "May") as? String else{ return (0,0)}
        arrayWeather.append(Double(MayString)!)
        guard let JunString = itemWeather.value(forKey: "Jun") as? String else{ return (0,0)}
        arrayWeather.append(Double(JunString)!)
        guard let JulString = itemWeather.value(forKey: "Jul") as? String else{ return (0,0)}
        arrayWeather.append(Double(JulString)!)
        guard let AugString = itemWeather.value(forKey: "Aug") as? String else{ return (0,0)}
        arrayWeather.append(Double(AugString)!)
        guard let SepString = itemWeather.value(forKey: "Sep") as? String else{ return (0,0)}
        arrayWeather.append(Double(SepString)!)
        guard let OctString = itemWeather.value(forKey: "Oct") as? String else{ return (0,0)}
        arrayWeather.append(Double(OctString)!)
        guard let NovString = itemWeather.value(forKey: "Nov") as? String else{ return (0,0)}
        arrayWeather.append(Double(NovString)!)
        guard let DecString = itemWeather.value(forKey: "Dec") as? String else{ return (0,0)}
        arrayWeather.append(Double(DecString)!)
        
        average = arrayWeather.reduce(0.0) {
            return $0 + $1/Double(arrayWeather.count)
        }
        
        var arrayWVariance : [Double] = []
        
        for item in arrayWeather{
            arrayWVariance.append(pow(item-average,2))
        }
        
        variance = arrayWVariance.reduce(0.0) {
            return $0 + $1/Double(arrayWVariance.count)
        }
        
        return (average.rounded(), variance.rounded())
    }
    
}
