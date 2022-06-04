//
//  Helpers.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/2/22.
//

import Foundation
import UIKit


// for login credentials data persistence
let defaults = UserDefaults.standard


// for music playback functionality
enum PlaybackActions {
    case backward
    case forward
}

// validate song index
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

// validate login credentials
internal func validateLoginCredentials(email: String, password: String) throws {
    
    guard (!email.isEmpty) else {
        throw LoginErrors.invalidLoginCredentials
    }
    
    guard (!password.isEmpty) else {
        throw LoginErrors.invalidLoginCredentials
    }
    
}

// validate signup credentials
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

// validate note data
func validateNewNoteData(title: String, description: String, body: String) throws {
    
    
    guard (!title.isEmpty) else {
        throw CreateNewNoteErrors.invalidTitle    }
    
    guard (!description.isEmpty) else {
        throw CreateNewNoteErrors.invalidDescription   }
    
    guard (!body.isEmpty) else {
        throw CreateNewNoteErrors.invalidBody    }
    
}

// segue helper
func segueToVC(target: String, sender: AnyObject) {
    let storyObject = UIStoryboard(name: "Main", bundle: nil)
    let targetVC = storyObject.instantiateViewController(withIdentifier: target)
    sender.present(targetVC, animated: true, completion: nil)
}
