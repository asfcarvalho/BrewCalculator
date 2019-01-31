//
//  SettingRouter.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class SettingRouter: SettingRouterProtocol {
    
    class func createViewController() -> UIViewController {
        
        var interactor: SettingInteractorInputProtocol & SettingWorkerOutputProtocol = SettingInteractor()
        var presenter: SettingPresenterProtocol & SettingInteractorOutputProtocol = SettingPresenter()
        var worker: SettingWorkerInputProtocol = SettingWorker()
        let router: SettingRouterProtocol = SettingRouter()
        
        var viewController = SettingViewController.init(nibName: nil, bundle: nil)
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        interactor.worker = worker
        worker.interactor = interactor
        presenter.viewController = viewController
        
        return viewController
    }

    func showAlert(with message: String, viewController: UIViewController) {
        let alert = UIAlertController(title: "Attemption", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        viewController.present(alert, animated: true, completion: nil)
    }
}
