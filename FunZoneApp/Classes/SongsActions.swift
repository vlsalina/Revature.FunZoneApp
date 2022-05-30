//
//  SongsActions.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/29/22.
//

import UIKit

class SongsActions {
    
    var actionType = ""
    
    init(actionType: String) {
        self.actionType = actionType
    }
    
    static func FetchActions() -> [SongsActions] {
        return [
            SongsActions(actionType: "Button"),
            SongsActions(actionType: "Button"),
            SongsActions(actionType: "Button"),
            SongsActions(actionType: "Button"),
            SongsActions(actionType: "Button"),
            SongsActions(actionType: "Button"),
            SongsActions(actionType: "Button"),
            SongsActions(actionType: "Button"),
            SongsActions(actionType: "Button"),
        ]
    }
    
    
}

