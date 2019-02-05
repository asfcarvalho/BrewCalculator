//
//  WaterView.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 29/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class WaterView: IodineCalculationComponents {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = CustomColor.viewMainBackgroundColor
        
        createViewWaterToHeight()
        createViewHeightToWater()
        createSodaCalculationView()
        createPACCalculationView()
        createIodineCalculationView()
        
        stackViewWaterToHeightSetup()
        stackViewHeightToWaterSetup()
        stackViewSodaCalculationAnchor()
        stackViewPacCalculationAnchor()
        stackViewIodineCalculationAnchor()
    }
    
    //This function create the iodine calculation view
    private func createIodineCalculationView() {
        
        viewWaterIodine.addSubview(waterVolumeIodineLabel)
        viewWaterIodine.addSubview(waterVolumeIodineText)
        
        viewIodineValue.addSubview(iodineVolumeLabel)
        viewIodineValue.addSubview(iodineVolumeText)
        
        stackViewIodine.addArrangedSubview(viewWaterIodine)
        stackViewIodine.addArrangedSubview(viewIodineValue)
        iodineView.addSubview(stackViewIodine)
        
        viewMain.addSubview(iodineLabel)
        viewMain.addSubview(iodineView)
        scrollMain.addSubview(viewMain)
        self.addSubview(scrollMain)
    }
    
    //This function make the iodine calculation anchor
    private func stackViewIodineCalculationAnchor() {
        iodineLabel.anchor(top: pacView.bottomAnchor, leading: viewMain.leadingAnchor, bottom: nil, trailing: viewMain.trailingAnchor, padding: UIEdgeInsets(top: 32, left: 16, bottom: 0, right: 16), size: CGSize(width: viewMain.frame.width, height: 25))
        
        iodineView.anchor(top: iodineLabel.bottomAnchor, leading: self.leadingAnchor, bottom: viewMain.bottomAnchor, trailing: viewMain.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 16, bottom: 16, right: 16), size: CGSize(width: viewMain.frame.width, height: 60))
        
        stackViewIodine.anchor(top: iodineView.topAnchor, leading: iodineView.leadingAnchor, bottom: iodineView.bottomAnchor, trailing: iodineView.trailingAnchor)
        
        viewWaterIodine.anchor(top: stackViewIodine.topAnchor, leading: stackViewIodine.leadingAnchor, bottom: stackViewIodine.bottomAnchor, trailing: nil, size: CGSize(width: stackViewIodine.frame.width / 2, height: stackViewIodine.frame.height))
        
        waterVolumeIodineLabel.anchor(top: viewWaterIodine.topAnchor, leading: viewWaterIodine.leadingAnchor, bottom: nil, trailing: viewWaterIodine.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 8, bottom: 0, right: 8), size: CGSize(width: viewWaterIodine.frame.width, height: 20))
        
        waterVolumeIodineText.anchor(top: waterVolumeIodineLabel.bottomAnchor, leading: viewWaterIodine.leadingAnchor, bottom: viewWaterIodine.bottomAnchor, trailing: viewWaterIodine.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
        
        viewIodineValue.anchor(top: stackViewIodine.topAnchor, leading: viewWaterIodine.trailingAnchor, bottom: stackViewIodine.bottomAnchor, trailing: stackViewIodine.trailingAnchor)
        
        iodineVolumeLabel.anchor(top: viewIodineValue.topAnchor, leading: viewIodineValue.leadingAnchor, bottom: nil, trailing: viewIodineValue.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 8, bottom: 0, right: 8), size: CGSize(width: viewIodineValue.frame.width, height: 20))
        
        iodineVolumeText.anchor(top: iodineVolumeLabel.bottomAnchor, leading: viewIodineValue.leadingAnchor, bottom: viewIodineValue.bottomAnchor, trailing: viewIodineValue.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
    }
    
    //This function create the pac calculation view
    private func createPACCalculationView() {
        
        viewWaterPac.addSubview(waterVolumePacLabel)
        viewWaterPac.addSubview(waterVolumePacText)
        
        viewPacValue.addSubview(pacVolumeLabel)
        viewPacValue.addSubview(pacVolumeText)
        
        stackViewPac.addArrangedSubview(viewWaterPac)
        stackViewPac.addArrangedSubview(viewPacValue)
        pacView.addSubview(stackViewPac)
        
        viewMain.addSubview(pacLabel)
        viewMain.addSubview(pacView)
        scrollMain.addSubview(viewMain)
        
        self.addSubview(scrollMain)
    }
    
    //This function make the pac calculation anchor
    private func stackViewPacCalculationAnchor() {
        pacLabel.anchor(top: sodaView.bottomAnchor, leading: viewMain.leadingAnchor, bottom: nil, trailing: viewMain.trailingAnchor, padding: UIEdgeInsets(top: 32, left: 16, bottom: 0, right: 16), size: CGSize(width: viewMain.frame.width, height: 25))
        
        pacView.anchor(top: pacLabel.bottomAnchor, leading: viewMain.leadingAnchor, bottom: nil, trailing: viewMain.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 16, bottom: 0, right: 16), size: CGSize(width: viewMain.frame.width, height: 60))
        
        stackViewPac.anchor(top: pacView.topAnchor, leading: pacView.leadingAnchor, bottom: pacView.bottomAnchor, trailing: pacView.trailingAnchor)
        
        viewWaterPac.anchor(top: stackViewPac.topAnchor, leading: stackViewPac.leadingAnchor, bottom: stackViewPac.bottomAnchor, trailing: nil, size: CGSize(width: stackViewPac.frame.width / 2, height: stackViewPac.frame.height))
        
        waterVolumePacLabel.anchor(top: viewWaterPac.topAnchor, leading: viewWaterPac.leadingAnchor, bottom: nil, trailing: viewWaterPac.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 8, bottom: 0, right: 8), size: CGSize(width: viewWaterPac.frame.width, height: 20))
        
        waterVolumePacText.anchor(top: waterVolumePacLabel.bottomAnchor, leading: viewWaterPac.leadingAnchor, bottom: viewWaterPac.bottomAnchor, trailing: viewWaterPac.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
        
        viewPacValue.anchor(top: stackViewPac.topAnchor, leading: viewWaterPac.trailingAnchor, bottom: stackViewPac.bottomAnchor, trailing: stackViewPac.trailingAnchor)
        
        pacVolumeLabel.anchor(top: viewPacValue.topAnchor, leading: viewPacValue.leadingAnchor, bottom: nil, trailing: viewPacValue.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 8, bottom: 0, right: 8), size: CGSize(width: viewPacValue.frame.width, height: 20))
        
        pacVolumeText.anchor(top: pacVolumeLabel.bottomAnchor, leading: viewPacValue.leadingAnchor, bottom: viewPacValue.bottomAnchor, trailing: viewPacValue.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
    }
    
    //This function create the soda calculation view
    private func createSodaCalculationView() {
        
        viewWaterSoda.addSubview(waterVolumeSodaLabel)
        viewWaterSoda.addSubview(waterVolumeSodaText)
        
        viewSodaValue.addSubview(sodaVolumeLabel)
        viewSodaValue.addSubview(sodaVolumeText)
        
        stackViewSoda.addArrangedSubview(viewWaterSoda)
        stackViewSoda.addArrangedSubview(viewSodaValue)
        sodaView.addSubview(stackViewSoda)
        
        viewMain.addSubview(sodaLabel)
        viewMain.addSubview(sodaView)
        scrollMain.addSubview(viewMain)
        
        self.addSubview(scrollMain)
    }
    
    
    
    //This function make the soda calculation anchor
    private func stackViewSodaCalculationAnchor() {
        sodaLabel.anchor(top: viewHeightToWater.bottomAnchor, leading: viewMain.leadingAnchor, bottom: nil, trailing: viewMain.trailingAnchor, padding: UIEdgeInsets(top: 32, left: 16, bottom: 0, right: 16), size: CGSize(width: viewMain.frame.width, height: 25))
        
        sodaView.anchor(top: sodaLabel.bottomAnchor, leading: viewMain.leadingAnchor, bottom: nil, trailing: viewMain.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 16, bottom: 0, right: 16), size: CGSize(width: viewMain.frame.width, height: 60))
        
        stackViewSoda.anchor(top: sodaView.topAnchor, leading: sodaView.leadingAnchor, bottom: sodaView.bottomAnchor, trailing: sodaView.trailingAnchor)
        
        viewWaterSoda.anchor(top: stackViewSoda.topAnchor, leading: stackViewSoda.leadingAnchor, bottom: stackViewSoda.bottomAnchor, trailing: nil, size: CGSize(width: stackViewSoda.frame.width / 2, height: stackViewSoda.frame.height))
        
        waterVolumeSodaLabel.anchor(top: viewWaterSoda.topAnchor, leading: viewWaterSoda.leadingAnchor, bottom: nil, trailing: viewWaterSoda.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 8, bottom: 0, right: 8), size: CGSize(width: viewWaterSoda.frame.width, height: 20))
        
        waterVolumeSodaText.anchor(top: waterVolumeSodaLabel.bottomAnchor, leading: viewWaterSoda.leadingAnchor, bottom: viewWaterSoda.bottomAnchor, trailing: viewWaterSoda.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
        
        viewSodaValue.anchor(top: stackViewSoda.topAnchor, leading: viewWaterSoda.trailingAnchor, bottom: stackViewSoda.bottomAnchor, trailing: stackViewSoda.trailingAnchor)
        
        sodaVolumeLabel.anchor(top: viewSodaValue.topAnchor, leading: viewSodaValue.leadingAnchor, bottom: nil, trailing: viewSodaValue.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 8, bottom: 0, right: 8), size: CGSize(width: viewSodaValue.frame.width, height: 20))
        
        sodaVolumeText.anchor(top: sodaVolumeLabel.bottomAnchor, leading: viewSodaValue.leadingAnchor, bottom: viewSodaValue.bottomAnchor, trailing: viewSodaValue.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
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
        
        viewMain.addSubview(waterLabel)
        viewMain.addSubview(viewWater)
        scrollMain.addSubview(viewMain)
        
        self.addSubview(scrollMain)
        
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
        
        viewMain.addSubview(heightLabel)
        viewMain.addSubview(viewHeightToWater)
        scrollMain.addSubview(viewMain)
        
        self.addSubview(scrollMain)
    }
    
    //this function make the height to water setup anchor
    private func stackViewHeightToWaterSetup() {
        heightLabel.anchor(top: viewWater.bottomAnchor, leading: viewMain.leadingAnchor, bottom: nil, trailing: viewMain.trailingAnchor, padding: UIEdgeInsets(top: 32, left: 16, bottom: 0, right: 16), size: CGSize(width: viewMain.frame.width, height: 25))
        
        viewHeightToWater.anchor(top: heightLabel.bottomAnchor, leading: viewMain.leadingAnchor, bottom: nil, trailing: viewMain.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 16, bottom: 0, right: 16), size: CGSize(width: viewMain.frame.width, height: 60))
        
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
        
        scrollMain.anchor(top: self.safeAreaLayoutGuide.topAnchor, leading: self.leadingAnchor, bottom: self.safeAreaLayoutGuide.bottomAnchor, trailing: self.trailingAnchor)
        
        viewMain.anchor(top: scrollMain.topAnchor, leading: self.leadingAnchor, bottom: scrollMain.bottomAnchor, trailing: self.trailingAnchor)
        
        waterLabel.anchor(top: viewMain.safeAreaLayoutGuide.topAnchor, leading: viewMain.leadingAnchor, bottom: nil, trailing: viewMain.trailingAnchor, padding: UIEdgeInsets(top: 16, left: 16, bottom: 8, right: 16), size: CGSize(width: viewMain.frame.width, height: 25))

        viewWater.anchor(top: waterLabel.bottomAnchor, leading: viewMain.leadingAnchor, bottom: nil, trailing: viewMain.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 16, bottom: 0, right: 16), size: CGSize(width: viewMain.frame.width, height: 60))
        
        stackView.anchor(top: viewWater.topAnchor, leading: viewWater.leadingAnchor, bottom: viewWater.bottomAnchor, trailing: viewWater.trailingAnchor)
        
        viewVolume.anchor(top: stackView.topAnchor, leading: stackView.leadingAnchor, bottom: stackView.bottomAnchor, trailing: nil, size: CGSize(width: stackView.frame.width / 2, height: stackView.frame.height))
        
        waterVolumeLabel.anchor(top: viewVolume.topAnchor, leading: viewVolume.leadingAnchor, bottom: nil, trailing: viewVolume.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 8, bottom: 0, right: 8), size: CGSize(width: viewVolume.frame.width, height: 20))

        waterVolumeText.anchor(top: waterVolumeLabel.bottomAnchor, leading: viewVolume.leadingAnchor, bottom: viewVolume.bottomAnchor, trailing: viewVolume.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
        
        viewHeight.anchor(top: stackView.topAnchor, leading: viewVolume.trailingAnchor, bottom: stackView.bottomAnchor, trailing: stackView.trailingAnchor)

        waterHeightLabel.anchor(top: viewHeight.topAnchor, leading: viewHeight.leadingAnchor, bottom: nil, trailing: viewHeight.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 8, bottom: 2, right: 8), size: CGSize(width: viewHeight.frame.width, height: 20))
        
        waterHeightText.anchor(top: waterHeightLabel.bottomAnchor, leading: viewHeight.leadingAnchor, bottom: viewHeight.bottomAnchor, trailing: viewHeight.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
