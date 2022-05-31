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
            SongsActions(actionType: "Favorites"),
            SongsActions(actionType: "Rock"),
            SongsActions(actionType: "Jazz"),
            SongsActions(actionType: "Pop"),
            SongsActions(actionType: "Classical"),
            SongsActions(actionType: "Indie"),
            SongsActions(actionType: "Alternative"),
        ]
    }
    
    
}

