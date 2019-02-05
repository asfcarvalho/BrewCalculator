//
//  PacCalculationComponents.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 01/02/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class PacCalculationComponents: SodaCalculationComponets {
    let pacLabel: UILabel = {
        let label = UILabel()
        label.text = "PAC calculation"
        label.textAlignment = .center
        label.textColor = CustomColor.titleColor
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    var pacView: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.viewColor
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    var stackViewPac: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        return stack
    }()
    
    var viewWaterPac: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.editableViewColor
        return view
    }()
    
    var viewPacValue: UIView = {
        let view = UIView()
        return view
    }()
    
    let waterVolumePacLabel: UILabel = {
        let label = UILabel()
        label.text = "Water/ML"
        label.textColor = CustomColor.labelColor
        label.textAlignment = .center
        return label
    }()
    
    var waterVolumePacText: UITextField = {
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
    
    let pacVolumeLabel: UILabel = {
        let label = UILabel()
        label.text = "PAC/G"
        label.textColor = CustomColor.labelColor
        label.textAlignment = .center
        return label
    }()
    
    var pacVolumeText: UITextField = {
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
