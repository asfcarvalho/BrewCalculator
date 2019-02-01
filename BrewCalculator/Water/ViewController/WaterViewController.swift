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
        waterView?.viewMain.addGestureRecognizer(touchView)
        waterView?.viewMain.isUserInteractionEnabled = true
        
        waterView?.waterVolumeText.addTarget(self, action: #selector(waterVolumeTextChange(_:)), for: .editingChanged)
        waterView?.waterVolumeText.addTarget(self, action: #selector(textBeginChange(_:)), for: .editingDidBegin)
        waterView?.waterVolumeText.addTarget(self, action: #selector(textEndingChange(_:)), for: .editingDidEnd)
        
        waterView?.waterHeightTextHeightHeightToWater.addTarget(self, action: #selector(waterHeightTextChange(_:)), for: .editingChanged)
        waterView?.waterHeightTextHeightHeightToWater.addTarget(self, action: #selector(textBeginChange(_:)), for: .editingDidBegin)
        waterView?.waterHeightTextHeightHeightToWater.addTarget(self, action: #selector(textEndingChange(_:)), for: .editingDidEnd)
        
        waterView?.waterVolumeSodaText.addTarget(self, action: #selector(waterSodaVolumeTextChange(_:)), for: .editingChanged)
        waterView?.waterVolumeSodaText.addTarget(self, action: #selector(textBeginChange(_:)), for: .editingDidBegin)
        waterView?.waterVolumeSodaText.addTarget(self, action: #selector(textEndingChange(_:)), for: .editingDidEnd)
        
        waterView?.waterVolumePacText.addTarget(self, action: #selector(waterPacVolumeTextChange(_:)), for: .editingChanged)
        waterView?.waterVolumePacText.addTarget(self, action: #selector(textBeginChange(_:)), for: .editingDidBegin)
        waterView?.waterVolumePacText.addTarget(self, action: #selector(textEndingChange(_:)), for: .editingDidEnd)
        
        waterView?.waterVolumeIodineText.addTarget(self, action: #selector(waterIodineVolumeTextChange(_:)), for: .editingChanged)
        waterView?.waterVolumeIodineText.addTarget(self, action: #selector(textBeginChange(_:)), for: .editingDidBegin)
        waterView?.waterVolumeIodineText.addTarget(self, action: #selector(textEndingChange(_:)), for: .editingDidEnd)

    }
    
    deinit {
        NotificationCenter.default.removeObserver(self);
    }
    
    @objc func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y = 0 // Move view to original position
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        interactor?.getSetting()
    }
    
    @objc private func textEndingChange(_ sender: UITextField) {
        waterView?.viewMain.frame.origin.y = 0
    }
    
    @objc private func textBeginChange(_ sender: UITextField) {
        
        guard let y = sender.superview?.superview?.superview?.frame.origin.y,
              let height = sender.superview?.superview?.superview?.frame.size.height else {
            return
        }
        
        if y + height > (waterView?.frame.height ?? 0.0) - 220.0 {
            waterView?.viewMain.frame.origin.y = -155
            
//            let movementDuration:TimeInterval = 0.3
//            let movement:CGFloat = -155 //( up ? -moveValue : moveValue)
//            UIView.beginAnimations( "animateView", context: nil)
//            UIView.setAnimationBeginsFromCurrentState(true)
//            UIView.setAnimationDuration(movementDuration )
//            waterView?.scrollMain.scrollRectToVisible(sender.superview?.superview?.superview?.frame ?? CGRect(x: 0, y: 0, width: 0, height: 0), animated: true)
////            waterView?.viewMain.frame = waterView?.viewMain.frame.offsetBy(dx: 0, dy: movement) ?? CGRect(x: 0, y: 0, width: 0, height: 0)
////            self.view.frame = CGRectOffset(self.view.frame, 0,  movement)
//            UIView.commitAnimations()
        }
        
        
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

