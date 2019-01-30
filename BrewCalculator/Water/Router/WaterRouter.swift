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
        
        var interactor: WaterInteractorInputProtocol = WaterInteractor()
        var presenter: WaterPresenterProtocol & WaterInteractorOutputProtocol = WaterPresenter()
        
        let viewController = WaterViewController.init(nibName: nil, bundle: nil)
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
        
        return viewController
        
    }
    
    
}
