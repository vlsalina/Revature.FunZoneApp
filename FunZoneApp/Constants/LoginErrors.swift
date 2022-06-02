//
//  LoginErrors.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/1/22.
//

import Foundation

enum LoginErrors : Error {
    case invalidLoginCredentials
    case unknown(OSStatus)
}

// login constants
let userDefaultEmailKey = "userdefault-email"
let invalidLoginCredentails = "Invalid email or password"
let unknownLoginError = "Unknown login error"

