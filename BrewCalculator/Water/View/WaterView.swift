//
//  WaterView.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 29/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class WaterView: SodaCalculationComponets {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(red: 213/255, green: 116/255, blue: 6/255, alpha: 1.0)
        
        createViewWaterToHeight()
        createViewHeightToWater()
        
        stackViewWaterToHeightSetup()
        stackViewHeightToWaterSetup()
    }
    
    //This function create the soca calculation view
    private func createSodaCalculationView() {
        
    }
    
    //This function creat the water to height view
    private func createViewWaterToHeight() {
        viewVolume.addSubview(waterVolumeLabel)
        viewVolume.addSubview(waterVolumeText)
        
        viewHeight.addSubview(waterHeightLabel)
        viewHeight.addSubview(waterHeightText)
        
        stackView.addArrangedSubview(viewVolume)
        stackView.addArrangedSubview(viewHeight)
        
        viewWater.addSubview(stackView)
        
        self.addSubview(waterLabel)
        self.addSubview(viewWater)
    }
    
    //This function create the height to water view
    private func createViewHeightToWater() {
        
        viewVolumeHeightToWater.addSubview(waterVolumeLabelHeightHeightToWater)
        viewVolumeHeightToWater.addSubview(waterVolumeTextHeightHeightToWater)
        
        viewHeightHeightToWater.addSubview(waterHeightLabelHeightHeightToWater)
        viewHeightHeightToWater.addSubview(waterHeightTextHeightHeightToWater)
                
        stackViewHeightHeightToWater.addArrangedSubview(viewVolumeHeightToWater)
        stackViewHeightHeightToWater.addArrangedSubview(viewHeightHeightToWater)
        viewHeightToWater.addSubview(stackViewHeightHeightToWater)
        
        self.addSubview(heightLabel)
        self.addSubview(viewHeightToWater)
    }
    
    //this function make the height to water setup anchor
    private func stackViewHeightToWaterSetup() {
        heightLabel.anchor(top: viewWater.bottomAnchor, leading: self.leadingAnchor, bottom: nil, trailing: self.trailingAnchor, padding: UIEdgeInsets(top: 32, left: 16, bottom: 0, right: 16), size: CGSize(width: self.frame.width, height: 25))
        
        viewHeightToWater.anchor(top: heightLabel.bottomAnchor, leading: self.leadingAnchor, bottom: nil, trailing: self.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 16, bottom: 0, right: 16), size: CGSize(width: self.frame.width, height: 60))
        
        stackViewHeightHeightToWater.anchor(top: viewHeightToWater.topAnchor, leading: viewHeightToWater.leadingAnchor, bottom: viewHeightToWater.bottomAnchor, trailing: viewHeightToWater.trailingAnchor)
        
        viewVolumeHeightToWater.anchor(top: stackViewHeightHeightToWater.topAnchor, leading: stackViewHeightHeightToWater.leadingAnchor, bottom: stackViewHeightHeightToWater.bottomAnchor, trailing: nil, size: CGSize(width: stackViewHeightHeightToWater.frame.width / 2, height: stackViewHeightHeightToWater.frame.height))
        
        waterVolumeLabelHeightHeightToWater.anchor(top: viewVolumeHeightToWater.topAnchor, leading: viewVolumeHeightToWater.leadingAnchor, bottom: nil, trailing: viewVolumeHeightToWater.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 8, bottom: 0, right: 8), size: CGSize(width: viewVolumeHeightToWater.frame.width, height: 20))
        
        waterVolumeTextHeightHeightToWater.anchor(top: waterVolumeLabelHeightHeightToWater.bottomAnchor, leading: viewVolumeHeightToWater.leadingAnchor, bottom: viewVolumeHeightToWater.bottomAnchor, trailing: viewVolumeHeightToWater.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
        
        viewHeightHeightToWater.anchor(top: stackViewHeightHeightToWater.topAnchor, leading: viewVolumeHeightToWater.trailingAnchor, bottom: stackViewHeightHeightToWater.bottomAnchor, trailing: stackViewHeightHeightToWater.trailingAnchor)
        
        waterHeightLabelHeightHeightToWater.anchor(top: viewHeightHeightToWater.topAnchor, leading: viewHeightHeightToWater.leadingAnchor, bottom: nil, trailing: viewHeightHeightToWater.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 8, bottom: 0, right: 8), size: CGSize(width: viewHeightHeightToWater.frame.width, height: 20))
        
        waterHeightTextHeightHeightToWater.anchor(top: waterHeightLabelHeightHeightToWater.bottomAnchor, leading: viewHeightHeightToWater.leadingAnchor, bottom: viewHeightHeightToWater.bottomAnchor, trailing: viewHeightHeightToWater.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
    }
    
    //this funcion make the water to height setup anchor
    private func stackViewWaterToHeightSetup() {
        
        waterLabel.anchor(top: self.safeAreaLayoutGuide.topAnchor, leading: self.leadingAnchor, bottom: nil, trailing: self.trailingAnchor, padding: UIEdgeInsets(top: 16, left: 16, bottom: 8, right: 16), size: CGSize(width: self.frame.width, height: 25))

        viewWater.anchor(top: waterLabel.bottomAnchor, leading: self.leadingAnchor, bottom: nil, trailing: self.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 16, bottom: 0, right: 16), size: CGSize(width: self.frame.width, height: 60))
        
        stackView.anchor(top: viewWater.topAnchor, leading: viewWater.leadingAnchor, bottom: viewWater.bottomAnchor, trailing: viewWater.trailingAnchor)
        
        viewVolume.anchor(top: stackView.topAnchor, leading: stackView.leadingAnchor, bottom: stackView.bottomAnchor, trailing: nil, size: CGSize(width: stackView.frame.width / 2, height: stackView.frame.height))
        
        waterVolumeLabel.anchor(top: viewVolume.topAnchor, leading: viewVolume.leadingAnchor, bottom: nil, trailing: viewVolume.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 8, bottom: 2, right: 8), size: CGSize(width: viewVolume.frame.width, height: 20))

        waterVolumeText.anchor(top: waterVolumeLabel.bottomAnchor, leading: viewVolume.leadingAnchor, bottom: viewVolume.bottomAnchor, trailing: viewVolume.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
        
        viewHeight.anchor(top: stackView.topAnchor, leading: viewVolume.trailingAnchor, bottom: stackView.bottomAnchor, trailing: stackView.trailingAnchor)

        waterHeightLabel.anchor(top: viewHeight.topAnchor, leading: viewHeight.leadingAnchor, bottom: nil, trailing: viewHeight.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 8, bottom: 2, right: 8), size: CGSize(width: viewHeight.frame.width, height: 20))
        
        waterHeightText.anchor(top: waterHeightLabel.bottomAnchor, leading: viewHeight.leadingAnchor, bottom: viewHeight.bottomAnchor, trailing: viewHeight.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
