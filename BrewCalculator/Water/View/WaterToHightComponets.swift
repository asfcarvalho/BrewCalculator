//
//  WaterToHeightComponets.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class WaterToHeightComponets: UIView {
    
    var viewMain: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }()
    
    var scrollMain: UIScrollView = {
        let scroll = UIScrollView()
        
        return scroll
    }()
    
    var viewWater: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.viewColor
        view.clipsToBounds = true
        view.configShadowDefault()
        return view
    }()
    
    var viewVolume: UIView = {
        let view = UIView()
        view.backgroundColor = CustomColor.editableViewColor
        view.configCornerRadius([CornerRadiusEnum.left])

        return view
    }()
    
    var viewHeight: UIView = {
        let view = UIView()
        return view
    }()
    
    let waterLabel: UILabel = {
        let label = UILabel()
        label.text = NSLocalizedString("volumeTitle", comment: "")
        label.textAlignment = .center
        label.textColor = CustomColor.titleColor
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    let waterVolumeLabel: UILabel = {
        let label = UILabel()
        label.text = NSLocalizedString("volumeLabel", comment: "")
        label.textColor = CustomColor.labelColor
        label.textAlignment = .center
        return label
    }()
    
    var waterVolumeText: UITextField = {
        let textView = UITextField()
        textView.placeholder = NSLocalizedString("volumePlaceholder", comment: "")
        textView.isUserInteractionEnabled = true
        textView.font = UIFont.boldSystemFont(ofSize: 14)
        textView.adjustsFontSizeToFitWidth = true
        textView.minimumFontSize = 10
        textView.keyboardType = .decimalPad
        textView.textAlignment = .center
        textView.textColor = CustomColor.textColor
        return textView
    }()
    
    let waterHeightLabel: UILabel = {
        let label = UILabel()
        label.text = NSLocalizedString("heightLabel", comment: "")
        label.textColor = CustomColor.labelColor
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
        textView.textColor = CustomColor.textColor
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
