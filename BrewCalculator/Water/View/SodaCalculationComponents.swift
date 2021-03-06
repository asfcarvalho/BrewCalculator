//
//  SodaCalculationComponents.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class SodaCalculationComponets: HeightToWaterComponents {
    let sodaLabel: UILabel = {
        let label = UILabel()
        label.text = NSLocalizedString("sodaTitle", comment: "")
        label.textAlignment = .center
        label.textColor = CustomColor.titleColor
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    var sodaView: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.viewColor
        view.clipsToBounds = true
        view.configShadowDefault()
        return view
    }()
    
    var stackViewSoda: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        return stack
    }()
    
    var viewWaterSoda: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.editableViewColor
        view.configCornerRadius([CornerRadiusEnum.left])
        return view
    }()
    
    var viewSodaValue: UIView = {
        let view = UIView()
        return view
    }()
    
    let waterVolumeSodaLabel: UILabel = {
        let label = UILabel()
        label.text = NSLocalizedString("waterLabel", comment: "")
        label.textColor = CustomColor.labelColor
        label.textAlignment = .center
        return label
    }()
    
    var waterVolumeSodaText: UITextField = {
        let textView = UITextField()
        textView.placeholder = NSLocalizedString("waterPlaceholder", comment: "")
        textView.isUserInteractionEnabled = true
        textView.font = UIFont.boldSystemFont(ofSize: 14)
        textView.adjustsFontSizeToFitWidth = true
        textView.minimumFontSize = 10
        textView.keyboardType = .decimalPad
        textView.textAlignment = .center
        textView.textColor = CustomColor.textColor
        return textView
    }()
    
    let sodaVolumeLabel: UILabel = {
        let label = UILabel()
        label.text = NSLocalizedString("sodaLabel", comment: "") 
        label.textColor = CustomColor.labelColor
        label.textAlignment = .center
        return label
    }()
    
    var sodaVolumeText: UITextField = {
        let textView = UITextField()
        textView.isUserInteractionEnabled = false
        textView.text = "0.0"
        textView.font = UIFont.boldSystemFont(ofSize: 14)
        textView.adjustsFontSizeToFitWidth = true
        textView.minimumFontSize = 10
        textView.textAlignment = .center
        textView.textColor = CustomColor.textColor
        return textView
    }()
}
