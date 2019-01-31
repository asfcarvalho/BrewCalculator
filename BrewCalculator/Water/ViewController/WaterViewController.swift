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
        waterView?.waterVolumeSodaText.addTarget(self, action: #selector(waterSodaVolumeTextChange(_:)), for: .editingChanged)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        interactor?.getSetting()
    }
    
    @objc private func waterVolumeTextChange(_ sender: UITextField) {
        interactor?.calcWaterToHeight(value: Double(sender.text?.replacingOccurrences(of: ",", with: ".") ?? "0.0") ?? 0.0)
    }
    
    @objc private func waterHeightTextChange(_ sender: UITextField) {
        interactor?.calcHeightToWater(value: Double(sender.text?.replacingOccurrences(of: ",", with: ".") ?? "0.0") ?? 0.0)
    }
    
    @objc private func waterSodaVolumeTextChange(_ sender: UITextField) {
        interactor?.calcSodaValue(value: Double(sender.text?.replacingOccurrences(of: ",", with: ".") ?? "0.0") ?? 0.0)
    }
    
    @objc private func touchViewAction() {
        waterView?.waterVolumeText.endEditing(true)
        waterView?.waterHeightTextHeightHeightToWater.endEditing(true)
    }
}

extension WaterViewController: WaterViewControllerProtocol {
    func showPacValue(value: Double) {
        
    }
    
    func showIodineValue(value: Double) {
        
    }
    
    func showSodaVolume(value: Double) {
        waterView?.sodaVolumeText.text = value.description
    }
    
    func showWaterToHeightResult(value: Double) {
        waterView?.waterHeightText.text = value.description
    }
    
    func showHeightToWaterResult(value: Double) {
        waterView?.waterVolumeTextHeightHeightToWater.text = value.description
    }
}

