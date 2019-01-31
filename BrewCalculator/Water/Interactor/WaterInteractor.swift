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
    var r = 22.5
    var presenter: WaterInteractorOutputProtocol?
    var worker: WaterWorkerInputProtocol?
    var setting: Setting?
    
    func calcWaterToHeight(value: Double) {
        
        let v = value * 1000
        r = setting?.ray ?? r
        
        let h = Double(String(format: "%.2f", v / (pi * (r * r)))) ?? 0.0
        
        presenter?.showWaterToHeightResult(value: h)
    }
    
    func calcHeightToWater(value: Double) {
        
        
        r = setting?.ray ?? r
        
        let l = Double(String(format: "%.2f", ((value * pi * (r * r)) / 1000))) ?? 0.0
        
        presenter?.showHeightToWaterResult(value: l)
    }
    
    func calcSodaValue(value: Double) {
        
        let sodaPercentage = setting?.sodaPercentage ?? 0.0 //constant
        
        let soda = 100.0 / sodaPercentage
        let sodaProportion = setting?.sodaProportion ?? 0.0 / 100 //constant
        
        let volume = (value * sodaProportion) * soda
        print(volume)
        presenter?.showSodaVolume(value: volume)
    }
    
    func calcPacValue(value: Double) {
        let pacPercentage = setting?.pacPercentage ?? 0.0 / 100.0
        let volume = pacPercentage * value
        
        presenter?.showPacValue(value: volume)
    }
    
    func calcIodineValue(value: Double) {
        let iodinePercentage = setting?.iodinePercentage ?? 0.0 / 100.0
        let volume = value * iodinePercentage
        
        presenter?.showIodineValue(value: volume)
    }
    
    func getSetting() {
        worker?.getSetting()
    }
}

extension WaterInteractor: WaterWorkerOutputProtocol {
    func getSetting(setting: Setting) {
        self.setting = setting
    }
}
