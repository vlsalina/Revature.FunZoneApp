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

// get target VC
func getTarget(target: String) -> AnyObject {
     let storyObject = UIStoryboard(name: "Main", bundle: nil)
    let targetVC = storyObject.instantiateViewController(withIdentifier: target)
    return targetVC
}

// get hours, minutes, and seconds
func getHoursMinutesSecondsFrom(seconds: Double) -> (hours: Int, minutes: Int, seconds: Int) {
    let secs = Int(seconds)
    let hours = secs / 3600
    let minutes = (secs % 3600) / 60
    let seconds = (secs % 3600) % 60
    return (hours, minutes, seconds)
}

// format time
func formatTimeFor(seconds: Double) -> String {
    let result = getHoursMinutesSecondsFrom(seconds: seconds)
    let hoursString = "\(result.hours)"
    var minutesString = "\(result.minutes)"
    if minutesString.count == 1 {
        minutesString = "0\(result.minutes)"
    }
    var secondsString = "\(result.seconds)"
    if secondsString.count == 1 {
        secondsString = "0\(result.seconds)"
    }
    var time = "\(hoursString):"
    if result.hours >= 1 {
        time.append("\(minutesString):\(secondsString)")
    }
    else {
        time = "\(minutesString):\(secondsString)"
    }
    return time
}
