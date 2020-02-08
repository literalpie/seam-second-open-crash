//
//  MockMoc.swift
//  memPie
//
//  Created by Benjamin Kindle on 12/28/19.
//  Copyright © 2019 Benjamin Kindle. All rights reserved.
//

import CoreData

class MockContext {
    var moc: NSManagedObjectContext

    init() {
        let container = NSPersistentContainer(name: "SeamUpdates")

        container.loadPersistentStores(completionHandler: { (_, _) in })

        self.moc = container.viewContext

        let items = try? moc.fetch(Item.fetchRequest()) as [Item]
        for item in items! {
            moc.delete(item)
        }

        // Save Changes
        try? moc.save()

    }
}
