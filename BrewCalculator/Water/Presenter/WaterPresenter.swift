//
//  WaterPresenter.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class WaterPresenter: WaterPresenterProtocol {
    var viewController: WaterViewControllerProtocol?

}

extension WaterPresenter: WaterInteractorOutputProtocol {
    func showPacValue(value: Double) {
        viewController?.showPacValue(value: value)
    }
    
    func showIodineValue(value: Double) {
        viewController?.showIodineValue(value: value)
    }
    
    func showSodaVolume(value: Double) {
        viewController?.showSodaVolume(value: value)
    }
    
    func showWaterToHeightResult(value: Double) {
        viewController?.showWaterToHeightResult(value: value)
    }
    
    func showHeightToWaterResult(value: Double) {
        viewController?.showHeightToWaterResult(value: value)
    }
}
