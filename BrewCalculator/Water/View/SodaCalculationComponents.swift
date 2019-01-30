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
}
