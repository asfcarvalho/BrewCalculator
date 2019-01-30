//
//  WaterInteractor.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class WaterInteractor: WaterInteractorInputProtocol {
    let pi = 3.14
    let r = 22.5
    var presenter: WaterInteractorOutputProtocol?
    
    func calcWaterToHeight(value: Double) {
        
        
        let l = Double(String(format: "%.2f", ((value * pi * (r * r)) / 1000))) ?? 0.0
        presenter?.showWaterToHeightResult(value: l)
    }
    
    func calcHeightToWater(value: Double) {
        let v = value * 1000
        let h = Double(String(format: "%.2f", v / (pi * (r * r)))) ?? 0.0
        presenter?.showHeightToWaterResult(value: h)
    }
}
