//
//  WaterViewController.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 29/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class WaterViewController: BaseViewController {

    var waterView: WaterView?
    var interactor: WaterInteractorInputProtocol?
    private var stringArray: String = ""
    private var textFiledPosition = CGRect(x: 0, y: 0, width: 0, height: 0)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        waterView = WaterView(frame: self.view.frame)
        
        self.view = waterView
        
        let touchView = UITapGestureRecognizer(target: self, action: #selector(touchViewAction))
        waterView?.viewMain.addGestureRecognizer(touchView)
        waterView?.viewMain.isUserInteractionEnabled = true
        
        waterView?.waterVolumeText.addTarget(self, action: #selector(waterVolumeTextChange(_:)), for: .editingChanged)
        waterView?.waterVolumeText.addTarget(self, action: #selector(textBeginChange(_:)), for: .editingDidBegin)
        
        waterView?.waterHeightTextHeightHeightToWater.addTarget(self, action: #selector(waterHeightTextChange(_:)), for: .editingChanged)
        waterView?.waterHeightTextHeightHeightToWater.addTarget(self, action: #selector(textBeginChange(_:)), for: .editingDidBegin)
        
        waterView?.waterVolumeSodaText.addTarget(self, action: #selector(waterSodaVolumeTextChange(_:)), for: .editingChanged)
        waterView?.waterVolumeSodaText.addTarget(self, action: #selector(textBeginChange(_:)), for: .editingDidBegin)
        
        waterView?.waterVolumePacText.addTarget(self, action: #selector(waterPacVolumeTextChange(_:)), for: .editingChanged)
        waterView?.waterVolumePacText.addTarget(self, action: #selector(textBeginChange(_:)), for: .editingDidBegin)
        
        waterView?.waterVolumeIodineText.addTarget(self, action: #selector(waterIodineVolumeTextChange(_:)), for: .editingChanged)
        waterView?.waterVolumeIodineText.addTarget(self, action: #selector(textBeginChange(_:)), for: .editingDidBegin)
        
        setupViewController(viewMain: waterView?.viewMain ?? UIView(), scrollMain: waterView?.scrollMain ?? UIScrollView(), textFiledPosition: textFiledPosition)
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
    
    @objc private func waterPacVolumeTextChange(_ sender: UITextField) {
        interactor?.calcPacValue(value: Double(sender.text?.replacingOccurrences(of: ",", with: ".") ?? "0.0") ?? 0.0)
    }
    
    @objc private func waterIodineVolumeTextChange(_ sender: UITextField) {
        interactor?.calcIodineValue(value: Double(sender.text?.replacingOccurrences(of: ",", with: ".") ?? "0.0") ?? 0.0)
    }
    
    @objc private func touchViewAction() {
        waterView?.waterVolumeText.endEditing(true)
        waterView?.waterHeightTextHeightHeightToWater.endEditing(true)
        waterView?.waterVolumeSodaText.endEditing(true)
        waterView?.waterVolumePacText.endEditing(true)
        waterView?.waterVolumeIodineText.endEditing(true)
    }
}

extension WaterViewController: WaterViewControllerProtocol {
    func showPacValue(value: Double) {
        waterView?.pacVolumeText.text = value.description
    }
    
    func showIodineValue(value: Double) {
        waterView?.iodineVolumeText.text = value.description
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

