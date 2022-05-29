//
//  MoviesViewActions.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/28/22.
//

import UIKit

class MoviesViewActions {
    
    var actionType : String
    
    init(actionType:String) {
        self.actionType = actionType
    }
    
    static func FetchActions() -> [MoviesViewActions] {
        return [
            MoviesViewActions(actionType: "Favorites"),
            MoviesViewActions(actionType: "Movies"),
            MoviesViewActions(actionType: "Series"),
        ]
    }
    
}
