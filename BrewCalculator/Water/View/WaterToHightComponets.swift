//
//  WaterToHeightComponets.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class WaterToHeightComponets: UIView {
    var viewWater: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 233/255, green: 140/255, blue: 1/255, alpha: 1.0)
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    var viewVolume: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.4)
        return view
    }()
    
    var viewHeight: UIView = {
        let view = UIView()
        return view
    }()
    
    let waterLabel: UILabel = {
        let label = UILabel()
        label.text = "Volume to Height"
        label.textAlignment = .center
        label.textColor = UIColor(red: 246/255, green: 216/255, blue: 141/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    let waterVolumeLabel: UILabel = {
        let label = UILabel()
        label.text = "Volume/L"
        label.textAlignment = .center
        return label
    }()
    
    var waterVolumeText: UITextField = {
        let textView = UITextField()
        textView.placeholder = "Put the volume value"
        textView.isUserInteractionEnabled = true
        textView.font = UIFont.boldSystemFont(ofSize: 14)
        textView.adjustsFontSizeToFitWidth = true
        textView.minimumFontSize = 10
        textView.keyboardType = .decimalPad
        textView.textAlignment = .center
        return textView
    }()
    
    let waterHeightLabel: UILabel = {
        let label = UILabel()
        label.text = "Height/CM"
        label.textAlignment = .center
        return label
    }()
    
    var waterHeightText: UITextField = {
        let textView = UITextField()
        textView.isUserInteractionEnabled = false
        textView.text = "0.0"
        textView.font = UIFont.boldSystemFont(ofSize: 14)
        textView.adjustsFontSizeToFitWidth = true
        textView.minimumFontSize = 10
        textView.textAlignment = .center
        return textView
    }()
    
    var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        return stack
    }()
    
    var stackViewVolume: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        return stack
    }()
    
    var stackViewHeight: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
}
