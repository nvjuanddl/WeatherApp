//
//  NSObjectExtension.swift
//  WeatherApp
//
//  Created by Rent Advisor on 21/01/18.
//  Copyright © 2018 nvjuanddl. All rights reserved.
//

import Foundation
import UIKit

extension NSObject {
    
    /// Name of the class
    class var stringRepresentation: String {
        let name = String(describing: self)
        return name
    }
    
    /// Padding for text field
    ///
    /// - Parameter size: Margin to use
    /// - Returns: View object to use for padding on UITextfield
    internal func padding(withSize size: CGSize) -> UIView {
        let viewFrame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        let paddingView = UIView(frame: viewFrame)
        return paddingView
    }
    
}
