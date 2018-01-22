//
//  StringExtension.swift
//  WeatherApp
//
//  Created by Rent Advisor on 22/01/18.
//  Copyright © 2018 nvjuanddl. All rights reserved.
//

import Foundation

extension String {
    
    // A handy method for %-encoding strings containing spaces and other
    // characters that need to be converted for use in URLs.
    var urlEncoded: String {
        return addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlUserAllowed)!
    }
    
    // Trim excess whitespace from the start and end of the string.
    var trimmed: String {
        return trimmingCharacters(in: NSCharacterSet.whitespaces)
    }
    
}
