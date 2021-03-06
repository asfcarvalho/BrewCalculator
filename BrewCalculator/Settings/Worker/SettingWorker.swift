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
                print(result.first?.radius)
                interactor?.getSetting(setting: Setting(radius: result.first?.radius,
                                                        sodaPercentage: result.first?.sodaPercentage,
                                                        sodaProportion: result.first?.sodaProportion,
                                                        pacPercentage:  result.first?.pacPercentage,
                                                        iodinePercentage: result.first?.iodinePercentage))
            }catch {
                print(error)
            }
            
            
        }
    }
    
    func setSetting(setting: Setting) {
        
        
        
        if let context = delegate?.persistentContainer {
            let request = NSFetchRequest<Paramters>(entityName: String(describing: Paramters.self))
//            paramters.radius = setting.radius ?? 0.0
            
            do{
                let result = try context.viewContext.fetch(request)
                if result.count <= 0 {
                    if let newParamters = NSEntityDescription.entity(forEntityName: String(describing: Paramters.self),
                                                                     in: context.viewContext) {
                        let value = Paramters(entity: newParamters, insertInto: context.viewContext)
                        value.radius = setting.radius ?? 0.0
                        value.sodaPercentage = setting.sodaPercentage ?? 0.0
                        value.sodaProportion = setting.sodaProportion ?? 0.0
                        value.pacPercentage = setting.pacPercentage ?? 0.0
                        value.iodinePercentage = setting.iodinePercentage ?? 0.0
                    }
                }else {
                    result.first?.radius = setting.radius ?? 0.0
                    result.first?.sodaPercentage = setting.sodaPercentage ?? 0.0
                    result.first?.sodaProportion = setting.sodaProportion ?? 0.0
                    result.first?.pacPercentage = setting.pacPercentage ?? 0.0
                    result.first?.iodinePercentage = setting.iodinePercentage ?? 0.0
                }
                try context.viewContext.save()
                interactor?.savedSuccess(message: "Settings saved successfully!")
            }catch {
                interactor?.savedFailure(message: "Failed to save settings!")
            }
        }
        
        
    }
}
