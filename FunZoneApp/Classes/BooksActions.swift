//
//  BooksActions.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/29/22.
//

class BooksActions {
    
   var actionType = ""
    
    init(actionType:String) {
        self.actionType = actionType
    }
    
    static func FetchActions() -> [BooksActions] {
       return [
        BooksActions(actionType: "Favorites"),
        BooksActions(actionType: "Audiobooks"),
        BooksActions(actionType: "eBooks"),
        BooksActions(actionType: "Romance"),
        BooksActions(actionType: "Mystery"),
        BooksActions(actionType: "Fantasy"),
       ]
    }
    
    
}
