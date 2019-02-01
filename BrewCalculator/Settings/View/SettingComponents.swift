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
    
    var viewRay: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 233/255, green: 140/255, blue: 1/255, alpha: 1.0)
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    let rayLabel: UILabel = {
        let label = UILabel()
        label.text = "Ray"
        return label
    }()
    
    let rayText: UITextField = {
        let text = UITextField()
        text.placeholder = "Put de ray value"
        text.keyboardType = .decimalPad
        return text
    }()
    
    var viewSodaPercentage: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 233/255, green: 140/255, blue: 1/255, alpha: 1.0)
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    let sodaPercentageLabel: UILabel = {
        let label = UILabel()
        label.text = "Soda percentage"
        return label
    }()
    
    let sodaPercentageText: UITextField = {
        let text = UITextField()
        text.placeholder = "Put de soda percentage value"
        text.keyboardType = .decimalPad
        return text
    }()
    
    var viewSodaProportion: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 233/255, green: 140/255, blue: 1/255, alpha: 1.0)
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    let sodaProportionLabel: UILabel = {
        let label = UILabel()
        label.text = "Soda proportion"
        return label
    }()
    
    let sodaProportionText: UITextField = {
        let text = UITextField()
        text.placeholder = "Put de soda proportion value"
        text.keyboardType = .decimalPad
        return text
    }()
    
    var viewPACPercentage: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 233/255, green: 140/255, blue: 1/255, alpha: 1.0)
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    let pacPercentageLabel: UILabel = {
        let label = UILabel()
        label.text = "PAC percentage"
        return label
    }()
    
    let pacPercentageText: UITextField = {
        let text = UITextField()
        text.placeholder = "Put de PAC percentage value"
        text.keyboardType = .decimalPad
        return text
    }()
    
    var viewIodinePercentage: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 233/255, green: 140/255, blue: 1/255, alpha: 1.0)
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    let iodinePercentageLabel: UILabel = {
        let label = UILabel()
        label.text = "Iodine percentage"
        return label
    }()
    
    let iodinePercentageText: UITextField = {
        let text = UITextField()
        text.placeholder = "Put de Iodine percentage value"
        text.keyboardType = .decimalPad
        return text
    }()
    
    let saveButton: UIButton = {
        let button = UIButton()
        button.setTitle("Save", for: .normal)
        button.backgroundColor = UIColor.white.withAlphaComponent(0.4)
        button.layer.cornerRadius = 6
        return button
    }()
}
