//
//  SearchTextField.swift
//  WeatherApp
//
//  Created by Rent Advisor on 21/01/18.
//  Copyright © 2018 nvjuanddl. All rights reserved.
//

import UIKit

class SearchTextField: UITextField {
    weak var clearTextDelegate: SearchClearDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customiseAppearance()
    }
    
    private func customiseAppearance() {
        leftViewMode = UITextFieldViewMode.always
        rightViewMode = UITextFieldViewMode.always
        leftView = padding(withSize: CGSize.init(width: 20.0, height: heightValue))
        rightView = rigthButton()
        returnKeyType = .default
        clipsToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: CGFloat(0), height: CGFloat(0.5))
        layer.shadowOpacity = 0.5
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customiseAppearance()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customiseAppearance()
    }
    
    init() {
        super.init(frame: CGRect.zero)
        customiseAppearance()
    }
    
    @objc private func clearButtonTapped(_: UIButton?) {
        text = ""
        resignFirstResponder()
    }
    
    private func rigthButton() -> UIView? {
        let bgView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 37, height: 48.0))
        let btn = UIButton.init(type: UIButtonType.custom)
        btn.frame = CGRect.init(x: 0, y: 0, width: 24, height: 24)
        btn.addTarget(self, action: #selector(clearButtonTapped(_:)), for: UIControlEvents.touchUpInside)
        bgView.addSubview(btn)
        btn.center = bgView.center
        
        return bgView
    }
}

