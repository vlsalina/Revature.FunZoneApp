//
//  rememberMeHelper.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 6/1/22.
//

import Foundation

class RememberMeHelper {
    
    static func save() {
        do {
            try KeychainManager.save(service: "facebook.com", account: "vince", password: "password".data(using: .utf8) ?? Data())
        } catch {
            print(error)
        }
       
    }
    
    static func get() {
        
        guard let data = KeychainManager.get(service: "facebook.com", account: "vince") else {
            print("Failed to read password")
            return
        }
        
        let password = String(decoding: data, as: UTF8.self)
        print("Password: \(password)")
       
    }

    
}
