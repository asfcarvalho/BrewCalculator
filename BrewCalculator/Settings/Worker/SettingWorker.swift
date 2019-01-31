//
//  SettingWorker.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 30/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit
import CoreData

class SettingWorker: SettingWorkerInputProtocol {
    
    let delegate = UIApplication.shared.delegate as? AppDelegate
    var interactor: SettingWorkerOutputProtocol?
    
    func getSetting() {
        if let context = delegate?.persistentContainer {
            let request = NSFetchRequest<Paramters>(entityName: String(describing: Paramters.self))
            
            do{
                let result = try context.viewContext.fetch(request)
                print(result.first?.ray)
                interactor?.getSetting(setting: Setting(ray: result.first?.ray))
            }catch {
                print(error)
            }
            
            
        }
    }
    
    func setSetting(setting: Setting) {
        
        
        
        if let context = delegate?.persistentContainer {
            let request = NSFetchRequest<Paramters>(entityName: String(describing: Paramters.self))
//            paramters.ray = setting.ray ?? 0.0
            
            do{
                let result = try context.viewContext.fetch(request)
                if result.count <= 0 {
                    if let newParamters = NSEntityDescription.entity(forEntityName: String(describing: Paramters.self),
                                                                     in: context.viewContext) {
                        let value = Paramters(entity: newParamters, insertInto: context.viewContext)
                        value.ray = setting.ray ?? 0.0                        
                    }
                }else {
                    result.first?.ray = setting.ray ?? 0.0
                }
                try context.viewContext.save()
                interactor?.savedSuccess(message: "Settings saved successfully!")
            }catch {
                interactor?.savedFailure(message: "Failed to save settings!")
            }
        }
        
        
    }
}
