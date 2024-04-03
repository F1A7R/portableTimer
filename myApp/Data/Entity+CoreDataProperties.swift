//
//  Entity+CoreDataProperties.swift
//  myApp
//
//  Created by 손한솔 on 3/20/24.
//
//

import Foundation
import CoreData


extension Locations {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Locations> {
        return NSFetchRequest<Locations>(entityName: "Locations")
    }

    @NSManaged public var startLocation: String?
    @NSManaged public var endLocation: String?
    @NSManaged public var metroNum: String?

}

extension Locations : Identifiable {

}
