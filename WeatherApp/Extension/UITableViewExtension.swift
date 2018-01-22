//
//  UITableViewExtension.swift
//  WeatherApp
//
//  Created by Rent Advisor on 21/01/18.
//  Copyright © 2018 nvjuanddl. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    /// Register a XIB file with UITableView. XIB file name is used as reuse identifier so keep in mind to use the file name as reuse identifier.
    ///
    /// - Parameter nibName: Name of the XIB file
    internal func registerNib(_ nibName: String) {
        //print(nibName)
        let cellNib = UINib.init(nibName: nibName, bundle: nil)
        register(cellNib, forCellReuseIdentifier: nibName)
    }
    
    /// Make a UItableViewCell height automatic based on the AutoLayouts used.
    ///
    /// - Parameter _estimatedHeight: Estimated height for the row
    internal func autoHeightWith(estimatedHeight _estimatedHeight: CGFloat) {
        rowHeight = UITableViewAutomaticDimension
        estimatedRowHeight = _estimatedHeight
    }
    
    /// Hides extra rows created by UIKit with no data to display.
    internal func hideEmptyAndExtraRows() {
        tableFooterView = UIView.init()
    }
}
