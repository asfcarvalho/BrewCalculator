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
        label.text = NSLocalizedString("heightTitle", comment: "")
        label.textAlignment = .center
        label.textColor = CustomColor.titleColor
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    var viewHeightToWater: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.viewColor
        view.clipsToBounds = true
        view.configShadowDefault()
        return view
    }()
    
    var viewVolumeHeightToWater: UIView = {
        let view = UIView()
        return view
    }()
    
    var viewHeightHeightToWater: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.editableViewColor
        view.configCornerRadius([CornerRadiusEnum.right])
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
        label.text = NSLocalizedString("volumeLabel", comment: "")
        label.textColor = CustomColor.labelColor
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
        textView.textColor = CustomColor.textColor
        return textView
    }()
    
    let waterHeightLabelHeightHeightToWater: UILabel = {
        let label = UILabel()
        label.text = NSLocalizedString("heightLabel", comment: "")
        label.textColor = CustomColor.labelColor
        label.textAlignment = .center
        return label
    }()
    
    var waterHeightTextHeightHeightToWater: UITextField = {
        let textView = UITextField()
        textView.isUserInteractionEnabled = true
        textView.placeholder = NSLocalizedString("heightPlaceholder", comment: "")
        textView.font = UIFont.boldSystemFont(ofSize: 14)
        textView.keyboardType = .decimalPad
        textView.adjustsFontSizeToFitWidth = true
        textView.minimumFontSize = 10
        textView.textAlignment = .center
        textView.textColor = CustomColor.textColor
        return textView
    }()
}
