//
//  ActivityCard+CoreDataProperties.swift
//  Revenge-Boom
//
//  Created by Mattia Ferrara on 15/04/23.
//
//

import Foundation
import CoreData


extension ActivityCard {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ActivityCard> {
        return NSFetchRequest<ActivityCard>(entityName: "ActivityCard")
    }

    @NSManaged public var cardColor: String?
    @NSManaged public var descriptionActivity: String?
    @NSManaged public var image: String?
    @NSManaged public var name: String?
    @NSManaged public var numberOfParticipants: Int16
    @NSManaged public var requiredObjects: String?

}

extension ActivityCard : Identifiable {

}
