//
//  SettingProtocol.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

//ViewController -> Interactor
//Interactor -> Worker
//Worker -> Interactor
//Interactor -> Presenter
//Presenter -> ViewController
protocol SettingRouterProtocol {
    
    static func createViewController() -> UIViewController
}

protocol SettingInteractorInputProtocol {
    
    var presenter: SettingInteractorOutputProtocol? { get set }
    var worker: SettingWorkerInputProtocol? { get set }
    
    //ViewController -> Interactor
    func getSetting()
    func setSetting(setting: Setting)
}

protocol SettingInteractorOutputProtocol {
    //Interactor -> Protocol
    func getSetting(setting: Setting)
}

protocol SettingPresenterProtocol {
    var viewController: SettingViewControllerProtocol? { get set }
    
}

protocol SettingViewControllerProtocol {
    //Presenter -> ViewController
    func getSetting(setting: String)
}

protocol SettingWorkerInputProtocol {
    var interactor: SettingWorkerOutputProtocol? { get set }
    
    //Interactor -> Worker
    func getSetting()
    func setSetting(setting: Setting)
}

protocol SettingWorkerOutputProtocol {
    
    //Worker -> Interactor
    func getSetting(setting: Setting)
}
