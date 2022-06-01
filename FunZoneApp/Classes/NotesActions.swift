//
//  NotesActions.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/31/22.
//

import UIKit

class NotesActions {
    
   var actionType = ""
    
   init(actionType: String) {
       self.actionType = actionType
   }
    
   static func FetchActions() -> [NotesActions] {
       return [
           NotesActions(actionType: "+"),
           NotesActions(actionType: "All"),
           NotesActions(actionType: "Starred")
       ]
   }
    
}
