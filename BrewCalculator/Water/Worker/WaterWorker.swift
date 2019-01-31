//
//  WaterWorker.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 31/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

enum WaterType {
    case volume,
    height
}

class WaterWorker: WaterWorkerInputProtocol {
    var interactor: WaterWorkerOutputProtocol?
    var settingWorker: SettingWorkerInputProtocol?
    
    func getSetting() {
        settingWorker?.getSetting()        
    }
}

extension WaterWorker: SettingWorkerOutputProtocol {
    func getSetting(setting: Setting) {
        interactor?.getSetting(setting: setting)
    }
    
    func savedSuccess(message: String) {
        
    }
    
    func savedFailure(message: String) {
        
    }
}
