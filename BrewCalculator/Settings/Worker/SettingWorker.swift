//
//  SettingWorker.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class SettingWorker: SettingWorkerInputProtocol {
    var interactor: SettingWorkerOutputProtocol?
    
    func getSetting() {
        interactor?.getSetting(setting: Setting(ray: 22.5))
    }
    
    func setSetting(setting: Setting) {
        
    }
}
