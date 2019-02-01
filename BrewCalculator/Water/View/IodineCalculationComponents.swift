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
        label.textColor = UIColor(red: 246/255, green: 216/255, blue: 141/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    var iodineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 233/255, green: 140/255, blue: 1/255, alpha: 1.0)
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
        view.backgroundColor = UIColor.white.withAlphaComponent(0.4)
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
        return textView
    }()
    
    let iodineVolumeLabel: UILabel = {
        let label = UILabel()
        label.text = "Iodine/ML"
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
        return textView
    }()
}
