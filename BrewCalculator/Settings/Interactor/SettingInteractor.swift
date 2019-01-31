//
//  SettingInteractor.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class SettingInteractor: SettingInteractorInputProtocol {
    var worker: SettingWorkerInputProtocol?
    var presenter: SettingInteractorOutputProtocol?
    
    func getSetting() {
        worker?.getSetting()
    }
    
    func setSetting(setting: Setting) {
        worker?.setSetting(setting: setting)
    }
}

extension SettingInteractor: SettingWorkerOutputProtocol {
    func savedSuccess(message: String) {
        presenter?.savedSuccess(message: message)
    }
    
    func savedFailure(message: String) {
        presenter?.savedFailure(message: message)
    }
    
    func getSetting(setting: Setting) {
        presenter?.getSetting(setting: setting)
    }
}
