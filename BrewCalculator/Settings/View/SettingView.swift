//
//  SettingView.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class SettingView: UIView {
    
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
        return text
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(red: 213/255, green: 116/255, blue: 6/255, alpha: 1.0)
        
        createRayView()
        
        setupAnchor()
    }
    
    private func createRayView() {
        viewRay.addSubview(rayLabel)
        viewRay.addSubview(rayText)
        
        self.addSubview(viewRay)
    }
    
    private func setupAnchor() {
        
        viewRay.anchor(top: self.safeAreaLayoutGuide.topAnchor, leading: self.leadingAnchor, bottom: nil, trailing: self.trailingAnchor, padding: UIEdgeInsets(top: 16, left: 16, bottom: 0, right: 16), size: CGSize(width: self.frame.width, height: 60))
        
        rayLabel.anchor(top: viewRay.topAnchor, leading: viewRay.leadingAnchor, bottom: nil, trailing: viewRay.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8), size: CGSize(width: viewRay.frame.width, height: 20))
        
        rayText.anchor(top: rayLabel.bottomAnchor, leading: viewRay.leadingAnchor, bottom: viewRay.bottomAnchor, trailing: viewRay.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 8, bottom: 0, right: 8), size: CGSize(width: viewRay.frame.width, height: 40))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
