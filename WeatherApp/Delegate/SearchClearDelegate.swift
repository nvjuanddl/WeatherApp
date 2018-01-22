//
//  SearchClearDelegate.swift
//  WeatherApp
//
//  Created by Rent Advisor on 21/01/18.
//  Copyright © 2018 nvjuanddl. All rights reserved.
//

import Foundation

@objc protocol SearchSelectionDelegate: class {
    @objc optional func didSelect(latitude infoLat: Double,longitude infoLog: Double , at index: Int)
}

@objc protocol SearchClearDelegate: class {
}


@objc protocol CalculateDelegate: class {
    @objc optional func didSelect(city: String)
}
