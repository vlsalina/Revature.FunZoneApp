//
//  SignupErrors.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/2/22.
//

import Foundation

enum SignupErrors : Error {
   case duplicateEntry
}

enum SignupConstants : String {
    case registered = "Congrats! You're all signed up!"
    case duplicateEntry = "User already exists"
}
