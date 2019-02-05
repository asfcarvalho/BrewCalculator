//
//  IodineCalculationComponents.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 01/02/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class IodineCalculationComponents: PacCalculationComponents {
    let iodineLabel: UILabel = {
        let label = UILabel()
        label.text = "Iodine calculation"
        label.textAlignment = .center
        label.textColor = CustomColor.titleColor
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    var iodineView: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.viewColor
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    var stackViewIodine: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        return stack
    }()
    
    var viewWaterIodine: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.editableViewColor
        return view
    }()
    
    var viewIodineValue: UIView = {
        let view = UIView()
        return view
    }()
    
    let waterVolumeIodineLabel: UILabel = {
        let label = UILabel()
        label.text = "Water/ML"
        label.textAlignment = .center
        return label
    }()
    
    var waterVolumeIodineText: UITextField = {
        let textView = UITextField()
        textView.placeholder = "Put the water volume"
        textView.isUserInteractionEnabled = true
        textView.font = UIFont.boldSystemFont(ofSize: 14)
        textView.adjustsFontSizeToFitWidth = true
        textView.minimumFontSize = 10
        textView.keyboardType = .decimalPad
        textView.textAlignment = .center
        textView.textColor = CustomColor.textColor
        return textView
    }()
    
    let iodineVolumeLabel: UILabel = {
        let label = UILabel()
        label.text = "Iodine/ML"
        label.textColor = CustomColor.labelColor
        label.textAlignment = .center
        return label
    }()
    
    var iodineVolumeText: UITextField = {
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
