//
//  SearchCityView.swift
//  WeatherApp
//
//  Created by Rent Advisor on 21/01/18.
//  Copyright © 2018 nvjuanddl. All rights reserved.
//

import UIKit

class SearchCityView: UIView, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate, SearchClearDelegate, LocationGetterDelegate {
    
    
    @IBOutlet weak var searchField: SearchTextField?
    @IBOutlet weak var tableView: UITableView!
    
    var location: LocationGetter!
    fileprivate var cityA : City{
            return City()
    }
    
    fileprivate var city : [NSDictionary]?
    
    var index = Int()
    

    func didGetLocation(location: Location) {
        DispatchQueue.main.async() {
            self.selectionDelegate?.didSelect!(latitude: location.latitude, longitude: location.longitude, at: self.index)
            self.calculateDelegate?.didSelect!(city: location.city)
            
        }
    }
    
    func didNotGetLocation(error: NSError) {
        DispatchQueue.main.async() {
        }
    }
    
    weak var selectionDelegate: SearchSelectionDelegate?
    
    weak var calculateDelegate: CalculateDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        location = LocationGetter(delegate: self)
        searchField?.delegate = self
        searchField?.clearTextDelegate = self
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: CGFloat(0), height: CGFloat(0.5))
        layer.shadowOpacity = 0.5
        setUIElements()
    }
    
    class func createFromXIB() -> SearchCityView {
        guard let listView = Bundle.main.loadNibNamed(SearchCityView.stringRepresentation, owner: nil, options: nil)?[0] as? SearchCityView else { fatalError("Could not instantiate product list view") }
        return listView
    }
    
    func setUIElements() {
        let nibName = UINib(nibName: SearchResultCell.stringRepresentation, bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: SearchResultCell.stringRepresentation)
        tableView?.autoHeightWith(estimatedHeight: 50.0)
        tableView?.hideEmptyAndExtraRows()
        city = cityA.allGeneralLocation()
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SearchResultCell.stringRepresentation) as! SearchResultCell
        let info = city![indexPath.row].value(forKey: "nameCity") as? String
        cell.lblCity?.attributedText = formattedStrig(info!, searchField?.text ?? "")
        return cell
    }
    
    //
    //    // MARK: TextField Delegate
    func textFieldShouldBeginEditing(_: UITextField) -> Bool {
        heightValue = (superview?.heightValue ?? 0) * 0.45
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let city = textField.text{
            location.getLocationByCity(city: city)
        }
        heightValue = searchField?.heightValue ?? 48.0
        endEditing(true)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        heightValue = textField.heightValue
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let text: NSString = (textField.text ?? "") as NSString
        let resultString = text.replacingCharacters(in: range, with: string)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now(), execute: { [weak self, weak textField]() -> Void in
            
            if resultString == ""{
                self?.city = self?.cityA.allGeneralLocation()
            }else if resultString != ""{
                let filterCity = self?.city?.filter{(($0.value(forKey: "nameCity") as? String)?.lowercased().contains(resultString.lowercased()))!}
                self?.city = filterCity
            }
            self?.tableView?.reloadData()
        })
        
        return true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = city?.count{
            return count
        }
        return 0
        
    }
    
    func tableView(_ : UITableView, didSelectRowAt indexPath: IndexPath) {
        let info = city?[indexPath.row].value(forKey: "nameCity") as? String
        index = indexPath.row
        if let city = info?.urlEncoded{
            location.getLocationByCity(city: city)
        }
        heightValue = searchField?.heightValue ?? 48.0
        endEditing(true)
    }
    
    private func formattedStrig(_ fullText: String, _ substring: String) -> NSAttributedString {
        let string = fullText
        let attributedString = NSMutableAttributedString(string: string)
        return attributedString
    }
}

