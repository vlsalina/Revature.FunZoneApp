//
//  Note+CoreDataProperties.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/3/22.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var title: String?
    @NSManaged public var body: String?
    @NSManaged public var desc: String?

}

extension Note : Identifiable {

}
