//
//  SettingView.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class SettingView: UIView {
    
    var viewMain: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }()
    
    var scrollMain: UIScrollView = {
        let scroll = UIScrollView()
        
        return scroll
    }()
    
    var viewRay: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 233/255, green: 140/255, blue: 1/255, alpha: 1.0)
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    let rayLabel: UILabel = {
        let label = UILabel()
        label.text = "Ray"
        return label
    }()
    
    let rayText: UITextField = {
        let text = UITextField()
        text.placeholder = "Put de ray value"
        text.keyboardType = .decimalPad
        return text
    }()
    
    var viewSodaPercentage: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 233/255, green: 140/255, blue: 1/255, alpha: 1.0)
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    let sodaPercentageLabel: UILabel = {
        let label = UILabel()
        label.text = "Soda percentage"
        return label
    }()
    
    let sodaPercentageText: UITextField = {
        let text = UITextField()
        text.placeholder = "Put de soda percentage value"
        text.keyboardType = .decimalPad
        return text
    }()
    
    var viewSodaProportion: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 233/255, green: 140/255, blue: 1/255, alpha: 1.0)
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    let sodaProportionLabel: UILabel = {
        let label = UILabel()
        label.text = "Soda proportion"
        return label
    }()
    
    let sodaProportionText: UITextField = {
        let text = UITextField()
        text.placeholder = "Put de soda proportion value"
        text.keyboardType = .decimalPad
        return text
    }()
    
    var viewPACPercentage: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 233/255, green: 140/255, blue: 1/255, alpha: 1.0)
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    let pacPercentageLabel: UILabel = {
        let label = UILabel()
        label.text = "PAC percentage"
        return label
    }()
    
    let pacPercentageText: UITextField = {
        let text = UITextField()
        text.placeholder = "Put de PAC percentage value"
        text.keyboardType = .decimalPad
        return text
    }()
    
    var viewIodinePercentage: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 233/255, green: 140/255, blue: 1/255, alpha: 1.0)
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        return view
    }()
    
    let iodinePercentageLabel: UILabel = {
        let label = UILabel()
        label.text = "Iodine percentage"
        return label
    }()
    
    let iodinePercentageText: UITextField = {
        let text = UITextField()
        text.placeholder = "Put de Iodine percentage value"
        text.keyboardType = .decimalPad
        return text
    }()
    
    let saveButton: UIButton = {
        let button = UIButton()
        button.setTitle("Save", for: .normal)
        button.backgroundColor = UIColor.white.withAlphaComponent(0.4)
        button.layer.cornerRadius = 6
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(red: 213/255, green: 116/255, blue: 6/255, alpha: 1.0)
        
        createViews()
        
        setupRayAnchor()
        setupSodaAnchor()
        setupPACAnchor()
        setupIodineAnchor()
    }
    
    
    
    private func createViews() {
        viewRay.addSubview(rayLabel)
        viewRay.addSubview(rayText)
        
        viewSodaPercentage.addSubview(sodaPercentageLabel)
        viewSodaPercentage.addSubview(sodaPercentageText)
        
        viewSodaProportion.addSubview(sodaProportionLabel)
        viewSodaProportion.addSubview(sodaProportionText)
        
        viewPACPercentage.addSubview(pacPercentageLabel)
        viewPACPercentage.addSubview(pacPercentageText)
        
        viewIodinePercentage.addSubview(iodinePercentageLabel)
        viewIodinePercentage.addSubview(iodinePercentageText)
        
        viewMain.addSubview(viewRay)
        viewMain.addSubview(viewSodaPercentage)
        viewMain.addSubview(viewSodaProportion)
        viewMain.addSubview(viewPACPercentage)
        viewMain.addSubview(viewIodinePercentage)
        viewMain.addSubview(saveButton)
        scrollMain.addSubview(viewMain)
        self.addSubview(scrollMain)
    }
    
    //This function make the ray view anchor configuration
    fileprivate func setupRayAnchor() {
        
        scrollMain.anchor(top: self.safeAreaLayoutGuide.topAnchor, leading: self.leadingAnchor, bottom: self.safeAreaLayoutGuide.bottomAnchor, trailing: self.trailingAnchor)
        
        viewMain.anchor(top: scrollMain.topAnchor, leading: self.leadingAnchor, bottom: scrollMain.bottomAnchor, trailing: self.trailingAnchor)
        
        viewRay.anchor(top: viewMain.safeAreaLayoutGuide.topAnchor, leading: viewMain.leadingAnchor, bottom: nil, trailing: viewMain.trailingAnchor, padding: UIEdgeInsets(top: 16, left: 16, bottom: 0, right: 16), size: CGSize(width: viewMain.frame.width, height: 60))
        
        rayLabel.anchor(top: viewRay.topAnchor, leading: viewRay.leadingAnchor, bottom: nil, trailing: viewRay.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8), size: CGSize(width: viewRay.frame.width, height: 20))
        
        rayText.anchor(top: rayLabel.bottomAnchor, leading: viewRay.leadingAnchor, bottom: viewRay.bottomAnchor, trailing: viewRay.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8), size: CGSize(width: viewRay.frame.width, height: 40))
    }
    
    //This function make the soda view anchor configuration
    fileprivate func setupSodaAnchor() {
        viewSodaPercentage.anchor(top: viewRay.bottomAnchor, leading: viewMain.leadingAnchor, bottom: nil, trailing: viewMain.trailingAnchor, padding: UIEdgeInsets(top: 32, left: 16, bottom: 0, right: 16), size: CGSize(width: viewMain.frame.width, height: 60))
        
        sodaPercentageLabel.anchor(top: viewSodaPercentage.topAnchor, leading: viewSodaPercentage.leadingAnchor, bottom: nil, trailing: viewSodaPercentage.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8), size: CGSize(width: viewSodaPercentage.frame.width, height: 20))
        
        sodaPercentageText.anchor(top: sodaPercentageLabel.bottomAnchor, leading: viewSodaPercentage.leadingAnchor, bottom: viewSodaPercentage.bottomAnchor, trailing: viewSodaPercentage.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
        
        viewSodaProportion.anchor(top: viewSodaPercentage.bottomAnchor, leading: self.leadingAnchor, bottom: nil, trailing: viewMain.trailingAnchor, padding: UIEdgeInsets(top: 32, left: 16, bottom: 0, right: 16), size: CGSize(width: viewMain.frame.width, height: 60))
        
        sodaProportionLabel.anchor(top: viewSodaProportion.topAnchor, leading: viewSodaProportion.leadingAnchor, bottom: nil, trailing: viewSodaProportion.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8), size: CGSize(width: viewSodaProportion.frame.width, height: 20))
        
        sodaProportionText.anchor(top: sodaProportionLabel.bottomAnchor, leading: viewSodaProportion.leadingAnchor, bottom: viewSodaProportion.bottomAnchor, trailing: viewSodaProportion.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
    }
    
    //This function make the PAC view anchor configuration
    fileprivate func setupPACAnchor() {
        viewPACPercentage.anchor(top: viewSodaProportion.bottomAnchor, leading: viewMain.leadingAnchor, bottom: nil, trailing: viewMain.trailingAnchor, padding: UIEdgeInsets(top: 32, left: 16, bottom: 0, right: 16), size: CGSize(width: viewMain.frame.width, height: 60))
        
        pacPercentageLabel.anchor(top: viewPACPercentage.topAnchor, leading: viewPACPercentage.leadingAnchor, bottom: nil, trailing: viewPACPercentage.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
        
        pacPercentageText.anchor(top: pacPercentageLabel.bottomAnchor, leading: viewPACPercentage.leadingAnchor, bottom: viewPACPercentage.bottomAnchor, trailing: viewPACPercentage.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
    }
    
    //This function make the iodine view anchor configuration
    private func setupIodineAnchor() {

        viewIodinePercentage.anchor(top: viewPACPercentage.bottomAnchor, leading: viewMain.leadingAnchor, bottom: nil, trailing: viewMain.trailingAnchor, padding: UIEdgeInsets(top: 32, left: 16, bottom: 0, right: 16), size: CGSize(width: viewMain.frame.width, height: 60))
        
        iodinePercentageLabel.anchor(top: viewIodinePercentage.topAnchor, leading: viewIodinePercentage.leadingAnchor, bottom: nil, trailing: viewIodinePercentage.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8), size: CGSize(width: viewIodinePercentage.frame.width, height: 20))
        
        iodinePercentageText.anchor(top: iodinePercentageLabel.bottomAnchor, leading: viewIodinePercentage.leadingAnchor, bottom: viewIodinePercentage.bottomAnchor, trailing: viewIodinePercentage.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
        
        saveButton.anchor(top: viewIodinePercentage.bottomAnchor, leading: viewMain.leadingAnchor, bottom: viewMain.bottomAnchor, trailing: viewMain.trailingAnchor, padding: UIEdgeInsets(top: 32, left: 16, bottom: 16, right: 16), size: CGSize(width: viewMain.frame.width, height: 50))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
