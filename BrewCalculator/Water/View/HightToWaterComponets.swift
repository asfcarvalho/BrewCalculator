//
//  HeightToWaterComponets.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class HeightToWaterComponents: WaterToHeightComponets {
    let heightLabel: UILabel = {
        let label = UILabel()
        label.text = "Height to Volume"
        label.textAlignment = .center
        label.textColor = UIColor(red: 246/255, green: 216/255, blue: 141/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    var viewHeightToWater: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 233/255, green: 140/255, blue: 1/255, alpha: 1.0)
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    var viewVolumeHeightToWater: UIView = {
        let view = UIView()        
        return view
    }()
    
    var viewHeightHeightToWater: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.4)
        return view
    }()
    
    var stackViewHeightHeightToWater: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        return stack
    }()
    
    let waterVolumeLabelHeightHeightToWater: UILabel = {
        let label = UILabel()
        label.text = "Volume/L"
        label.textAlignment = .center
        return label
    }()
    
    var waterVolumeTextHeightHeightToWater: UITextField = {
        let textView = UITextField()
        textView.text = "0.0"
        textView.isUserInteractionEnabled = false
        textView.font = UIFont.boldSystemFont(ofSize: 14)
        textView.adjustsFontSizeToFitWidth = true
        textView.minimumFontSize = 10
        textView.keyboardType = .decimalPad
        textView.textAlignment = .center
        return textView
    }()
    
    let waterHeightLabelHeightHeightToWater: UILabel = {
        let label = UILabel()
        label.text = "Height/CM"
        label.textAlignment = .center
        return label
    }()
    
    var waterHeightTextHeightHeightToWater: UITextField = {
        let textView = UITextField()
        textView.isUserInteractionEnabled = true
        textView.placeholder = "Put the height value"
        textView.font = UIFont.boldSystemFont(ofSize: 14)
        textView.keyboardType = .decimalPad
        textView.adjustsFontSizeToFitWidth = true
        textView.minimumFontSize = 10
        textView.textAlignment = .center
        return textView
    }()
}
