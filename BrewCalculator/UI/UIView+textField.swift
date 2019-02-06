//
//  UIView+textField.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 05/02/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

enum CornerRadiusEnum {
    case left,
    right,
    top,
    bottom
}

extension UIView {
    
    func configShadowDefault() {
        self.layer.cornerRadius = 6
        self.layer.masksToBounds = false        
        self.layer.shadowOffset = CGSize(width: 2, height: 2)
        self.layer.shadowOpacity = 0.2
        self.layer.shadowRadius = 1
        self.layer.shadowColor = UIColor.black.cgColor
    }
    
    func configCornerRadius(_ cornerRadiusEnum: [CornerRadiusEnum]) {
        
        var markerCorners: CACornerMask = []
        
        for value in cornerRadiusEnum {
            switch value {
            case .left:
                markerCorners.insert([.layerMinXMaxYCorner, .layerMinXMinYCorner])
            case .right:
                markerCorners.insert([.layerMaxXMaxYCorner, .layerMaxXMinYCorner])
            case .top:
                markerCorners.insert([.layerMaxXMinYCorner, .layerMinXMinYCorner])
            case .bottom:
                markerCorners.insert([.layerMaxXMaxYCorner, .layerMinXMaxYCorner])
            }
        }
        
        
        self.layer.cornerRadius = 6
        self.layer.maskedCorners = markerCorners
    }
}

//        view.layer.maskedCorners = [.layerMaxXMaxYCorner]// right bottom
//        view.layer.maskedCorners = [.layerMaxXMinYCorner]//right top
//        view.layer.maskedCorners = [.layerMinXMaxYCorner]//left bottom
//        view.layer.maskedCorners = [.layerMinXMinYCorner]//left top
