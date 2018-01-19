//
//  City.swift
//  Weatherfy
//
//  Created by Rent Advisor on 18/01/18.
//  Copyright © 2018 SoSafe. All rights reserved.
//

import Foundation

class City {
    
    let location: [NSDictionary] = [
        ["nameCity": "rome"     , "lng": "12.492373", "lat":"41.890251"],
        ["nameCity": "london"   , "lng": "-0.118092" , "lat":"51.509865"],
        ["nameCity": "paris"   , "lng": "2.349014" , "lat":"48.864716"],
        ["nameCity": "ny"       , "lng": "-73.935242", "lat":"40.730610"],
        ["nameCity": "sydney"  , "lng": "151.20732", "lat":"-33.8675"],
        ["nameCity": "bangkok"  , "lng": "100.523186", "lat":"13.736717"],
        ["nameCity": "tokyo"    , "lng": "139.839478", "lat":"35.652832"],
        ["nameCity": "beijing"  , "lng": "116.5"     , "lat":"40.25"],
        ["nameCity": "lima"    , "lng": "-77.0622" , "lat":"-12.0478"],
        ] as [Any] as! [NSDictionary]
    
    let weather: [NSDictionary] = [
        ["nameCity": "rome", "Jan": "82.2", "Feb":"63.2", "Mar": "70.3", "Apr":"53.7", "May": "53.0", "Jun":"34.4", "Jul": "17.5", "Aug":"27.5", "Sep": "60.9", "Oct":"117.7", "Nov": "111.0", "Dec":"97.9"],
        ["nameCity": "london"    , "Jan": "44.0", "Feb":"38.9", "Mar": "38.9", "Apr":"42.2", "May": "47.3", "Jun":"52.1", "Jul": "59.5", "Aug":"57.2", "Sep": "55.4", "Oct":"63.0", "Nov": "59.0", "Dec":"52.9"],
        ["nameCity": "paris", "Jan": "182.3", "Feb":"120.6", "Mar": "158.1", "Apr":"204.9", "May": "323.1", "Jun":"300.5", "Jul": "236.8", "Aug":"192.9", "Sep": "66.3", "Oct":"63.3", "Nov": "83.2", "Dec":"154.7"],
        ["nameCity": "ny", "Jan": "108.7", "Feb":"101.8", "Mar": "131.9", "Apr":"93.5", "May": "98.8", "Jun":"93.6", "Jul": "102.2", "Aug":"131.8", "Sep": "94.0", "Oct":"82.3", "Nov": "107.8", "Dec":"94.2"],
        ["nameCity": "vancouver"    , "Jan": "82.2", "Feb":"63.2", "Mar": "70.3", "Apr":"53.7", "May": "53.0", "Jun":"34.4", "Jul": "17.5", "Aug":"27.5", "Sep": "60.9", "Oct":"117.7", "Nov": "111.0", "Dec":"97.9"],
        ["nameCity": "sydney"    , "Jan": "103.4", "Feb":"111.0", "Mar": "131.3", "Apr":"129.7", "May": "123.0", "Jun":"129.2", "Jul": "102.8", "Aug":"80.3", "Sep": "69.3", "Oct":"82.6", "Nov": "81.4", "Dec":"78.2"],
        ["nameCity": "bangkok"    , "Jan": "11.6", "Feb":"28.2", "Mar": "30.7", "Apr":"71.8", "May": "189.4", "Jun":"151.7", "Jul": "158.2", "Aug":"185.0", "Sep": "313.9", "Oct":"230.8", "Nov": "57.3", "Dec":"9.4"],
        ["nameCity": "tokyo"    , "Jan": "49.9", "Feb":"71.5", "Mar": "106.4", "Apr":"129.2", "May": "144.0", "Jun":"176.0", "Jul": "135.6", "Aug":"148.5", "Sep": "214.4", "Oct":"194.1", "Nov": "95.6", "Dec":"54.4"],
        ["nameCity": "beijing"    , "Jan": "3.9", "Feb":"4.7", "Mar": "8.2", "Apr":"18.4", "May": "33.0", "Jun":"78.1", "Jul": "224.3", "Aug":"170.0", "Sep": "57.4", "Oct":"18.0", "Nov": "9.3", "Dec":"2.7"],
        ["nameCity": "lima"    , "Jan": "1.3", "Feb":"0.9", "Mar": "0.7", "Apr":"0.4", "May": "0.7", "Jun":"1.8", "Jul": "4.4", "Aug":"3.1", "Sep": "3.3", "Oct":"1.7", "Nov": "0.5", "Dec":"0.7"],
        ] as [Any] as! [NSDictionary]
    
    func allGeneralLocation() -> [NSDictionary] {
        return location
    }
    
    func allGeneralWeather() -> [NSDictionary] {
        return weather
    }
}
