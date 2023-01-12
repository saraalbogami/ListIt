//
//  Items+CoreDataProperties.swift
//  ListIt
//
//  Created by sara ayed albogami on 14/06/1444 AH.
//
//
//
import Foundation
import CoreData


extension Items {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Items> {
        return NSFetchRequest<Items>(entityName: "Items")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var itemName: String?
    @NSManaged public var itemCate: String?
}

extension Items : Identifiable {

}
