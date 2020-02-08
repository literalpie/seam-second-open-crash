//
//  Item+CoreDataProperties.swift
//  SeamSecondOpenCrash
//
//  Created by Benjamin Kindle on 2/8/20.
//  Copyright © 2020 Benjamin Kindle. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Item)
public class Item: NSManagedObject {}

extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var name: String?
    @NSManaged public var status: Int16

}
