//
//  SettingViewController.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    private var settingView: SettingView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingView = SettingView(frame: self.view.frame)
        
        self.view = settingView

        let touchView = UITapGestureRecognizer(target: self, action: #selector(touchViewAction))
        settingView?.addGestureRecognizer(touchView)
        settingView?.isUserInteractionEnabled = true
    }

    @objc private func touchViewAction() {
        settingView?.rayText.endEditing(true)
    }
}
