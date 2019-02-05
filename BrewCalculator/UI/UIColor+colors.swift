//
//  UIColor+colors.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 05/02/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

struct CustomColor {
    
    static var viewColor: UIColor = {
        return UIColor(red: 247/255, green: 131/255, blue: 32/255, alpha: 1.0) //247,131,32
    }()
    
    static var editableViewColor: UIColor = {
        return UIColor.white.withAlphaComponent(0.4)
    }()
    
    static var titleColor: UIColor = {
        return UIColor(red: 246/255, green: 216/255, blue: 141/255, alpha: 1.0)
    }()
    
    static var labelColor: UIColor = {
        return UIColor(red: 76/255, green: 49/255, blue: 40/255, alpha: 1.0)
    }()
    
    static var textColor: UIColor = {
        return UIColor(red: 54/255, green: 8/255, blue: 11/255, alpha: 1.0)
    }()
    
    static var barColor: UIColor = {
        return UIColor(red: 242/255, green: 142/255, blue: 28/255, alpha: 1.0)
    }()
    
    static var barTextSelectedColor: UIColor = {
        return UIColor(red: 188.0/255.0, green: 23.0/255.0, blue: 1.0/255.0, alpha: 1.0)
    }()
    
    static var barTextUnselectedColor: UIColor = {
       return UIColor(red: 200.0/255.0, green: 95.0/255.0, blue: 2.0/255.0, alpha: 1.0)
    }()
    
    static var buttonBackgroundColor: UIColor = {
        return UIColor(red: 254.0/255.0, green: 247.0/255.0, blue: 233.0/255.0, alpha: 1.0)
    }()
    
    static var buttonTextColor: UIColor = {
        return UIColor(red: 54/255, green: 8/255, blue: 11/255, alpha: 1.0)
    }()
    
    static var viewMainBackgroundColor: UIColor = {
        return UIColor(red: 213/255, green: 116/255, blue: 6/255, alpha: 1.0)
    }()
}
