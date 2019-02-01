//
//  SettingViewController.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    var interactor: SettingInteractorInputProtocol?
    var router: SettingRouterProtocol?
    
    private var settingView: SettingView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingView = SettingView(frame: self.view.frame)
        
        self.view = settingView

        let touchView = UITapGestureRecognizer(target: self, action: #selector(touchViewAction))
        settingView?.viewMain.addGestureRecognizer(touchView)
        settingView?.viewMain.isUserInteractionEnabled = true
        
        settingView?.saveButton.addTarget(self, action: #selector(saveAction), for: .touchUpInside)
        
        settingView?.rayText.addTarget(self, action: #selector(textEditBegin(_:)), for: .editingDidBegin)
        settingView?.rayText.addTarget(self, action: #selector(textEditEnd(_:)), for: .editingDidEnd)
        
        settingView?.sodaPercentageText.addTarget(self, action: #selector(textEditBegin(_:)), for: .editingDidBegin)
        settingView?.sodaPercentageText.addTarget(self, action: #selector(textEditEnd(_:)), for: .editingDidEnd)
        
        settingView?.sodaProportionText.addTarget(self, action: #selector(textEditBegin(_:)), for: .editingDidBegin)
        settingView?.sodaProportionText.addTarget(self, action: #selector(textEditEnd(_:)), for: .editingDidEnd)
        
        settingView?.pacPercentageText.addTarget(self, action: #selector(textEditBegin(_:)), for: .editingDidBegin)
        settingView?.pacPercentageText.addTarget(self, action: #selector(textEditEnd(_:)), for: .editingDidEnd)
        
        settingView?.iodinePercentageText.addTarget(self, action: #selector(textEditBegin(_:)), for: .editingDidBegin)
        settingView?.iodinePercentageText.addTarget(self, action: #selector(textEditEnd(_:)), for: .editingDidEnd)
        
        //get settings
        interactor?.getSetting()
    }
    
    @objc func textEditEnd(_ sender: UITextField) {
        settingView?.viewMain.frame.origin.y = 0
    }
    
    @objc func textEditBegin(_ sender: UITextField) {
        guard let y = sender.superview?.frame.origin.y,
            let height = sender.superview?.frame.size.height else {
                return
        }
        
        if y + height > (settingView?.frame.height ?? 0.0) - 220.0 {
            settingView?.viewMain.frame.origin.y = -155
        }
    }

    @objc private func touchViewAction() {
        settingView?.rayText.endEditing(true)
        settingView?.sodaProportionText.endEditing(true)
        settingView?.sodaPercentageText.endEditing(true)
        settingView?.iodinePercentageText.endEditing(true)
        settingView?.pacPercentageText.endEditing(true)
    }
    
    @objc private func saveAction() {
        settingView?.rayText.endEditing(true)
        interactor?.setSetting(setting: Setting(ray: Double(settingView?.rayText.text?.replacingOccurrences(of: ",", with: ".") ?? "0.0"),
                                                sodaPercentage: Double(settingView?.sodaPercentageText.text?.replacingOccurrences(of: ",", with: ".") ?? "0.0"),
                                                sodaProportion: Double(settingView?.sodaProportionText.text?.replacingOccurrences(of: ",", with: ".") ?? "0.0"),
                                                pacPercentage: Double(settingView?.pacPercentageText.text?.replacingOccurrences(of: ",", with: ".") ?? "0.0"),
                                                iodinePercentage: Double(settingView?.iodinePercentageText.text?.replacingOccurrences(of: ",", with: ".") ?? "0.0")))
    }
}

extension SettingViewController: SettingViewControllerProtocol {
    func savedSuccess(message: String) {
        router?.showAlert(with: message, viewController: self)
    }
    
    func savedFailure(message: String) {
        router?.showAlert(with: message, viewController: self)
    }
    
    func getSetting(setting: Setting) {
        settingView?.rayText.text = setting.ray?.description
        settingView?.sodaPercentageText.text = setting.sodaPercentage?.description
        settingView?.sodaProportionText.text = setting.sodaProportion?.description
        settingView?.iodinePercentageText.text = setting.iodinePercentage?.description
        settingView?.pacPercentageText.text = setting.pacPercentage?.description
    }
}
