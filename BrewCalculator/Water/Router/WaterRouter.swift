//
//  WaterRouter.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 29/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class WaterRouter: WaterRouterProtocol {
    
    class func createViewController() -> UIViewController {
        
        var interactor: WaterInteractorInputProtocol & WaterWorkerOutputProtocol = WaterInteractor()
        var presenter: WaterPresenterProtocol & WaterInteractorOutputProtocol = WaterPresenter()
        var worker: WaterWorkerInputProtocol & SettingWorkerOutputProtocol = WaterWorker()
        var settingWorker: SettingWorkerInputProtocol = SettingWorker()
        
        let viewController = WaterViewController.init(nibName: nil, bundle: nil)
        viewController.interactor = interactor
        interactor.presenter = presenter
        worker.interactor = interactor
        worker.settingWorker = settingWorker
        interactor.worker = worker
        settingWorker.interactor = worker
        presenter.viewController = viewController
        
        return viewController
        
    }
    
    
}
