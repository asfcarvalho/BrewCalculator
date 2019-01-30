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
    func showWaterToHeightResult(value: Double) {
        viewController?.showWaterToHeightResult(value: value)
    }
    
    func showHeightToWaterResult(value: Double) {
        viewController?.showHeightToWaterResult(value: value)
    }
}
