//
//  Paramters+CoreDataProperties.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 31/01/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//
//

import Foundation
import CoreData


extension Paramters {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Paramters> {
        return NSFetchRequest<Paramters>(entityName: "Paramters")
    }

    @NSManaged public var ray: Double
    @NSManaged public var sodaPercentage: Double
    @NSManaged public var sodaProportion: Double
    @NSManaged public var pacPercentage: Double
    @NSManaged public var iodinePercentage: Double
}
