//
//  UIViewExtension.swift
//  WeatherApp
//
//  Created by Rent Advisor on 21/01/18.
//  Copyright © 2018 nvjuanddl. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    /// X Origin of UIView
    var xOrigin: CGFloat {
        get {
            return frame.origin.x
        }
        set(newX) {
            frame.origin.x = newX
        }
    }

    
    /// New height of the UIView
    var heightValue: CGFloat {
        get {
            return self.frame.size.height
        }
        set(newHeight) {
            frame.size.height = newHeight
        }
    }
    
    /// New Width of the UIView
    var widthValue: CGFloat {
        get {
            return self.frame.size.width
        }
        set(newWidth) {
            frame.size.width = newWidth
        }
    }
    

    /// Instantiate a view from xib.
    ///
    /// - Returns: Instantiatd view from XIB
    class func instanceFromNib() -> UIView {
        return UINib(nibName: String(describing: self), bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }

}
