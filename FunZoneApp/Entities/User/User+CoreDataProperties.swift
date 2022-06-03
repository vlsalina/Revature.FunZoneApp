//
//  User+CoreDataProperties.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/2/22.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var email: String?
    @NSManaged public var password: String?

}

extension User : Identifiable {

}
