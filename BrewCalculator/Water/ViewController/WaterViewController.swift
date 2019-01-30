//
//  WaterViewController.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 29/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class WaterViewController: UIViewController {
    
    var waterView: WaterView?
    var interactor: WaterInteractorInputProtocol?
    var stringArray: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        waterView = WaterView(frame: self.view.frame)
        
        self.view = waterView
        
        let touchView = UITapGestureRecognizer(target: self, action: #selector(touchViewAction))
        waterView?.addGestureRecognizer(touchView)
        waterView?.isUserInteractionEnabled = true
        
        waterView?.waterVolumeText.addTarget(self, action: #selector(waterVolumeTextChange(_:)), for: .editingChanged)
        waterView?.waterHeightTextHeightHeightToWater.addTarget(self, action: #selector(waterHeightTextChange(_:)), for: .editingChanged)
    }
    
    @objc private func waterVolumeTextChange(_ sender: UITextField) {
        interactor?.calcWaterToHeight(value: Double(sender.text ?? "0.0") ?? 0.0)
    }
    
    @objc private func waterHeightTextChange(_ sender: UITextField) {
        interactor?.calcHeightToWater(value: Double(sender.text ?? "0.0") ?? 0.0)
    }
    
    @objc private func touchViewAction() {
        waterView?.waterVolumeText.endEditing(true)
        waterView?.waterHeightTextHeightHeightToWater.endEditing(true)
    }
}

extension WaterViewController: WaterViewControllerProtocol {
    func showWaterToHeightResult(value: Double) {
        waterView?.waterHeightText.text = value.description
    }
    
    func showHeightToWaterResult(value: Double) {
        waterView?.waterVolumeTextHeightHeightToWater.text = value.description
    }
}

