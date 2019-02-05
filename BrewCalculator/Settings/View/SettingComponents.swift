//
//  SettingComponents.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 01/02/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class SettingComponents: UIView {
    var viewMain: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }()
    
    var scrollMain: UIScrollView = {
        let scroll = UIScrollView()
        
        return scroll
    }()
    
    var viewRadius: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.viewColor        
        view.clipsToBounds = true
        view.configDefault()
        return view
    }()
    
    let radiusLabel: UILabel = {
        let label = UILabel()
        label.text = "Radius"
        label.textColor = CustomColor.labelColor
        return label
    }()
    
    let radiusText: UITextField = {
        let text = UITextField()
        text.placeholder = "Put de radius value"
        text.keyboardType = .decimalPad
        text.textColor = CustomColor.textColor
        return text
    }()
    
    var viewSodaPercentage: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.viewColor
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        view.configDefault()
        return view
    }()
    
    let sodaPercentageLabel: UILabel = {
        let label = UILabel()
        label.text = "Soda percentage"
        label.textColor = CustomColor.labelColor
        return label
    }()
    
    let sodaPercentageText: UITextField = {
        let text = UITextField()
        text.placeholder = "Put de soda percentage value"
        text.keyboardType = .decimalPad
        text.textColor = CustomColor.textColor
        return text
    }()
    
    var viewSodaProportion: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.viewColor
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    let sodaProportionLabel: UILabel = {
        let label = UILabel()
        label.text = "Soda proportion"
        label.textColor = CustomColor.labelColor
        return label
    }()
    
    let sodaProportionText: UITextField = {
        let text = UITextField()
        text.placeholder = "Put de soda proportion value"
        text.keyboardType = .decimalPad
        text.textColor = CustomColor.textColor
        return text
    }()
    
    var viewPACPercentage: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.viewColor
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    let pacPercentageLabel: UILabel = {
        let label = UILabel()
        label.text = "PAC percentage"
        label.textColor = CustomColor.labelColor
        return label
    }()
    
    let pacPercentageText: UITextField = {
        let text = UITextField()
        text.placeholder = "Put de PAC percentage value"
        text.keyboardType = .decimalPad
        text.textColor = CustomColor.textColor
        return text
    }()
    
    var viewIodinePercentage: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.viewColor
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    let iodinePercentageLabel: UILabel = {
        let label = UILabel()
        label.text = "Iodine percentage"
        label.textColor = CustomColor.labelColor
        return label
    }()
    
    let iodinePercentageText: UITextField = {
        let text = UITextField()
        text.placeholder = "Put de Iodine percentage value"
        text.keyboardType = .decimalPad
        text.textColor = CustomColor.textColor
        return text
    }()
    
    let saveButton: UIButton = {
        let button = UIButton()
        button.setTitle("Save", for: .normal)
        button.backgroundColor = CustomColor.buttonBackgroundColor
        button.layer.cornerRadius = 6
        button.setTitleColor(CustomColor.buttonTextColor, for: .normal)
        button.layer.shadowRadius = 0.6
        button.layer.shadowOpacity = 0.3
        button.layer.shadowColor = UIColor.black.cgColor //CustomColor.barTextUnselectedColor.cgColor
        button.layer.shadowOffset = CGSize(width: 3, height: 3)
        return button
    }()
}
