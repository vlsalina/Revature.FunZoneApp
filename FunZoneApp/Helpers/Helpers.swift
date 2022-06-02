//
//  Helpers.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/2/22.
//

import Foundation


// for login credentials data persistence
let defaults = UserDefaults.standard


// for music playback functionality
enum PlaybackActions {
    case backward
    case forward
}

func validateIndex(action: PlaybackActions, i: inout Int, len: Int) {
    
    if (action == PlaybackActions.backward) {
        if (i == 0) {
            i = 0
        } else {
            i = i-1
        }
    } else {
        if (i == len-1) {
            i = len-1
        } else {
            i = i+1
        }
    }
}

internal func validateLoginCredentials(email: String, password: String) throws {
    
    guard (!email.isEmpty) else {
        throw LoginErrors.invalidLoginCredentials
    }
    
    guard (!password.isEmpty) else {
        throw LoginErrors.invalidLoginCredentials
    }
    
}

func validateSignUpCredentials(email: String, password: String, confirmPassword: String) throws {
    
    guard (!email.isEmpty) else {
        throw LoginErrors.invalidLoginCredentials
    }
    
    guard (!password.isEmpty) else {
        throw LoginErrors.invalidLoginCredentials
    }
    
    guard (!confirmPassword.isEmpty) else {
        throw LoginErrors.invalidLoginCredentials
    }
    
    guard (password == confirmPassword) else {
        throw LoginErrors.passwordsDoNotMatch
    }
   
}
