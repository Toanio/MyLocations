//
//  Location+CoreDataProperties.swift
//  MyLocations
//
//  Created by c.toan on 06.09.2022.
//
//

import Foundation
import CoreData
import CoreLocation


extension Location {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }

    @NSManaged public var latitdue: Double
    @NSManaged public var longtitude: Double
    @NSManaged public var date: Date?
    @NSManaged public var locationDescription: String
    @NSManaged public var category: String?
    @NSManaged public var placemark: CLPlacemark

}

extension Location : Identifiable {

}
