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
    
    //ViewController -> Interactor
    func calcWaterToHeight(value: Double)
    func calcHeightToWater(value: Double)
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
