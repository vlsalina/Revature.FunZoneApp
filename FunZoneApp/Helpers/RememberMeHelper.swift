//
//  rememberMeHelper.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/1/22.
//

import Foundation

class RememberMeHelper {
    
    static func save(email: String, password: String) {
        do {
            try KeychainManager.save(service: App, email: email, password: password.data(using: .utf8) ?? Data())
        } catch {
            print(error)
        }
       
    }
    
    static func get(email: String) {
        
        guard let data = KeychainManager.get(service: App, email: email) else {
            print("Failed to read password")
            return
        }
        
        let password = String(decoding: data, as: UTF8.self)
        print("Password: \(password)")
       
    }

    
}
