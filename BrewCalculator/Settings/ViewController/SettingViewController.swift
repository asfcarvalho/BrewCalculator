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
        settingView?.addGestureRecognizer(touchView)
        settingView?.isUserInteractionEnabled = true
        
        settingView?.saveButton.addTarget(self, action: #selector(saveAction), for: .touchUpInside)
        
        //get settings
        interactor?.getSetting()
    }

    @objc private func touchViewAction() {
        settingView?.rayText.endEditing(true)
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
