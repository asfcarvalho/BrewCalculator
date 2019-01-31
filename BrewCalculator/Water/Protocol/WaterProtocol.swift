//
//  WaterProtocol.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 29/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit


protocol WaterRouterProtocol {
    
    static func createViewController() -> UIViewController
}

protocol WaterInteractorInputProtocol {
    
    var presenter: WaterInteractorOutputProtocol? { get set}
    var worker: WaterWorkerInputProtocol? { get set }
    
    //ViewController -> Interactor
    func calcWaterToHeight(value: Double)
    func calcHeightToWater(value: Double)
    func getSetting()
}

protocol WaterPresenterProtocol {
    var viewController: WaterViewControllerProtocol? { get set }
}

protocol WaterInteractorOutputProtocol: class {
    //Interactor -> Presenter
    func showWaterToHeightResult(value: Double)
    func showHeightToWaterResult(value: Double)
}

protocol WaterViewControllerProtocol {
    //Presenter -> ViewController
    func showWaterToHeightResult(value: Double)
    func showHeightToWaterResult(value: Double)
}

protocol WaterWorkerInputProtocol {
    
    var interactor: WaterWorkerOutputProtocol? { get set }
    var settingWorker: SettingWorkerInputProtocol? { get set }
    
    //Interactor -> Worker
    func getSetting()
}

protocol WaterWorkerOutputProtocol {
    
    //Worker -> Interactor
    func getSetting(setting: Setting)
}
