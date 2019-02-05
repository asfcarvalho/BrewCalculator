//
//  BrewTabBarController.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 29/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class BrewTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        createTabBar()
    }
    
    private func createTabBar() {
        
        
        let selectedColor   = CustomColor.barTextSelectedColor
        let unselectedColor = CustomColor.barTextUnselectedColor

        
        let waterViewController = WaterRouter.createViewController()
        waterViewController.tabBarItem.title = "Water"
        waterViewController.tabBarItem.image = UIImage(named: "icon_Beer")?.withRenderingMode(.alwaysTemplate)
                
        let setupViewController = SettingRouter.createViewController()
        setupViewController.title = "Setting"
        setupViewController.tabBarItem.image = UIImage(named: "icon_Setting")?.withRenderingMode(.alwaysTemplate)
        
        let tabs: [UIViewController] = [
            waterViewController,
            setupViewController
        ]
        
        self.viewControllers = tabs
        
        self.tabBar.barTintColor = CustomColor.barColor
        
        self.tabBar.tintColor = selectedColor
        self.tabBar.unselectedItemTintColor = unselectedColor
    }
}
