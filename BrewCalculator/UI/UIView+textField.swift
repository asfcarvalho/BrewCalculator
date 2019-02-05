//
//  UIView+textField.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 05/02/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

extension UIView {
    
    func configDefault() {
        self.layer.cornerRadius = 6
        self.layer.masksToBounds = false
        self.layer.shadowOffset = CGSize(width: 2, height: 2)
        self.layer.shadowOpacity = 0.2
        self.layer.shadowRadius = 1
        self.layer.shadowColor = UIColor.black.cgColor
    }
}

class UIViewTextField: UIView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.configDefault()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
