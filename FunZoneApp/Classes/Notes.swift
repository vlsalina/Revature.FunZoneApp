//
//  Notes.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/31/22.
//
import UIKit

class Notes {
    
    var title = ""
    var description = ""
    var date : Date
    var body = ""
    var imageNotes : UIImage
    var starred : Bool
    
    init(title: String, description: String, date: Date, body: String, imageNotes: UIImage, starred: Bool) {
        self.title = title
        self.description = description
        self.date = date
        self.body = body
        self.imageNotes = imageNotes
        self.starred = starred
    }
    
    static func FetchNotes() -> [Notes] {
        return [
            Notes(title: "Title", description: "Lorem Ipsum Dolor", date: Date(), body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", imageNotes: UIImage(named: "1")!, starred: false),
        ]
    }
    
}
