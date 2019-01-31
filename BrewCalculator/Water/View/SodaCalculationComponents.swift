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
        label.text = "Soda calculation"
        label.textAlignment = .center
        label.textColor = UIColor(red: 246/255, green: 216/255, blue: 141/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    var sodaView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 233/255, green: 140/255, blue: 1/255, alpha: 1.0)
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
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
        view.backgroundColor = UIColor.white.withAlphaComponent(0.4)
        return view
    }()
    
    var viewSodaValue: UIView = {
        let view = UIView()
        return view
    }()
    
    let waterVolumeSodaLabel: UILabel = {
        let label = UILabel()
        label.text = "Water/ML"
        label.textAlignment = .center
        return label
    }()
    
    var waterVolumeSodaText: UITextField = {
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
    
    let sodaVolumeLabel: UILabel = {
        let label = UILabel()
        label.text = "Soda/ML"
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
        return textView
    }()
}
