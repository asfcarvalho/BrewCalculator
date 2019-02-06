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
        view.configShadowDefault()
        return view
    }()
    
    let radiusLabel: UILabel = {
        let label = UILabel()
        label.text = NSLocalizedString("radiusLabel", comment: "")
        label.textColor = CustomColor.labelColor
        return label
    }()
    
    let radiusText: UITextField = {
        let text = UITextField()
        text.placeholder = NSLocalizedString("radiusPlaceholder", comment: "")
        text.keyboardType = .decimalPad
        text.textColor = CustomColor.textColor
        return text
    }()
    
    var viewSodaPercentage: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.viewColor
        view.clipsToBounds = true
        view.configShadowDefault()
        return view
    }()
    
    let sodaPercentageLabel: UILabel = {
        let label = UILabel()
        label.text = NSLocalizedString("sodaPercentageLabel", comment: "")
        label.textColor = CustomColor.labelColor
        return label
    }()
    
    let sodaPercentageText: UITextField = {
        let text = UITextField()
        text.placeholder = NSLocalizedString("sodaPercentagePlaceholder", comment: "")
        text.keyboardType = .decimalPad
        text.textColor = CustomColor.textColor
        return text
    }()
    
    var viewSodaProportion: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.viewColor
        view.clipsToBounds = true
        view.configShadowDefault()
        return view
    }()
    
    let sodaProportionLabel: UILabel = {
        let label = UILabel()
        label.text = NSLocalizedString("sodaProportionLabel", comment: "")
        label.textColor = CustomColor.labelColor
        return label
    }()
    
    let sodaProportionText: UITextField = {
        let text = UITextField()
        text.placeholder = NSLocalizedString("sodaProportionPlaceholder", comment: "")
        text.keyboardType = .decimalPad
        text.textColor = CustomColor.textColor
        return text
    }()
    
    var viewPACPercentage: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.viewColor
        view.clipsToBounds = true
        view.configShadowDefault()
        return view
    }()
    
    let pacPercentageLabel: UILabel = {
        let label = UILabel()
        label.text = NSLocalizedString("pacPercentageLabel", comment: "")
        label.textColor = CustomColor.labelColor
        return label
    }()
    
    let pacPercentageText: UITextField = {
        let text = UITextField()
        text.placeholder = NSLocalizedString("pacPercentagePlaceholder", comment: "")
        text.keyboardType = .decimalPad
        text.textColor = CustomColor.textColor
        return text
    }()
    
    var viewIodinePercentage: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.viewColor
        view.clipsToBounds = true
        view.configShadowDefault()
        return view
    }()
    
    let iodinePercentageLabel: UILabel = {
        let label = UILabel()
        label.text = NSLocalizedString("iodinePercentageLabel", comment: "")
        label.textColor = CustomColor.labelColor
        return label
    }()
    
    let iodinePercentageText: UITextField = {
        let text = UITextField()
        text.placeholder = NSLocalizedString("iodinePercentagePlaceholder", comment: "")
        text.keyboardType = .decimalPad
        text.textColor = CustomColor.textColor
        return text
    }()
    
    let saveButton: UIButton = {
        let button = UIButton()
        button.setTitle(NSLocalizedString("save", comment: ""), for: .normal)
        button.backgroundColor = CustomColor.buttonBackgroundColor        
        button.setTitleColor(CustomColor.buttonTextColor, for: .normal)
        button.configShadowDefault()
        return button
    }()
}
