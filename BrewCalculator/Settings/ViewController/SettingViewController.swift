//
//  SettingViewController.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class SettingViewController: BaseViewController {
    
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
        
        settingView?.radiusText.addTarget(self, action: #selector(textBeginChange(_:)), for: .editingDidBegin)
        
        settingView?.sodaPercentageText.addTarget(self, action: #selector(textBeginChange(_:)), for: .editingDidBegin)
        
        settingView?.sodaProportionText.addTarget(self, action: #selector(textBeginChange(_:)), for: .editingDidBegin)
        
        settingView?.pacPercentageText.addTarget(self, action: #selector(textBeginChange(_:)), for: .editingDidBegin)
        
        settingView?.iodinePercentageText.addTarget(self, action: #selector(textBeginChange(_:)), for: .editingDidBegin)
        
        //get settings
        interactor?.getSetting()
        
        setupViewController(viewMain: settingView?.viewMain ?? UIView(), scrollMain: settingView?.scrollMain ?? UIScrollView())
    }
    
    @objc private func touchViewAction() {
        settingView?.radiusText.endEditing(true)
        settingView?.sodaProportionText.endEditing(true)
        settingView?.sodaPercentageText.endEditing(true)
        settingView?.iodinePercentageText.endEditing(true)
        settingView?.pacPercentageText.endEditing(true)
    }
    
    @objc private func saveAction() {
        settingView?.radiusText.endEditing(true)
        interactor?.setSetting(setting: Setting(radius: Double(settingView?.radiusText.text?.replacingOccurrences(of: ",", with: ".") ?? "0.0"),
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
        settingView?.radiusText.text = setting.radius?.description
        settingView?.sodaPercentageText.text = setting.sodaPercentage?.description
        settingView?.sodaProportionText.text = setting.sodaProportion?.description
        settingView?.iodinePercentageText.text = setting.iodinePercentage?.description
        settingView?.pacPercentageText.text = setting.pacPercentage?.description
    }
}
