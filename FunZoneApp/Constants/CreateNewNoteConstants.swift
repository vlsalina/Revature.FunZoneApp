//
//  CreateNewNoteConstants.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/4/22.
//

import Foundation

enum CreateNewNoteErrors : Error {
    case invalidTitle
    case invalidDescription
    case invalidBody
}

enum CreateNewNoteConstants : String {
    case invalidTitle = "Invalid title"
    case invalidDescription = "Invalid description"
    case invalidBody = "Invalid body"
    case unknownError = "Unknown error occurred"
}
