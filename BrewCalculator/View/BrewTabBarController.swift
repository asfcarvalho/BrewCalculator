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
        
        
        let selectedColor   = UIColor(red: 188.0/255.0, green: 23.0/255.0, blue: 1.0/255.0, alpha: 1.0)
        let unselectedColor = UIColor(red: 200.0/255.0, green: 95.0/255.0, blue: 2.0/255.0, alpha: 1.0)

        
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
        
        self.tabBar.barTintColor = UIColor(red: 242/255, green: 142/255, blue: 28/255, alpha: 1.0)
        
        self.tabBar.tintColor = selectedColor
        self.tabBar.unselectedItemTintColor = unselectedColor
    }
}
