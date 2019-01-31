//
//  SettingPresenter.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class SettingPresenter: SettingPresenterProtocol {
    var viewController: SettingViewControllerProtocol?

}

extension SettingPresenter: SettingInteractorOutputProtocol {
    func savedSuccess(message: String) {
        viewController?.savedSuccess(message: message)
    }
    
    func savedFailure(message: String) {
        viewController?.savedFailure(message: message)
    }
    
    func getSetting(setting: Setting) {
        viewController?.getSetting(setting: setting.ray?.description ?? "")
    }
}
