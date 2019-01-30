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
        
        let viewController = SettingViewController.init(nibName: nil, bundle: nil)
        
        
        return viewController
    }
}
