//
//  LoginViewController.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/26/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var remember: UISwitch!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBorderRadius(view: &box1)
        
        // Do any additional setup after loading the view.
        initialize()
    }
    
    func initialize() {
        if (defaults.bool(forKey: "remember")) {
            let emailDefault = defaults.string(forKey: LoginConstants.userDefaultEmailKey.rawValue)
            let passDefault = RememberMeHelper.get(email: emailDefault!)
            
            if (emailDefault != nil) {
                email.text = emailDefault
                password.text = passDefault
                remember.isOn = true
            }
        } else {
            email.text = ""
            password.text = ""
            remember.isOn = false
        }
    }
    
    @IBAction func login(_ sender: Any) {
        
        // error handling for login credentials
        do {
            try validateLoginCredentials(email: email.text!, password: password.text!)
        } catch LoginErrors.invalidLoginCredentials {
            errorLabel.text = LoginConstants.invalidLoginCredentails.rawValue
            return
        } catch {
            errorLabel.text = LoginConstants.unknownLoginError.rawValue
            return
        }
        
        // MARK: - implement code to check user against users database
        let existingUser = DBHelperClass.dbHelper.getUser(email: email.text!)
        if (email.text == existingUser.email && password.text == existingUser.password) {
            // remember user
            if (remember.isOn) {
                defaults.set(remember.isOn, forKey: "remember")
                RememberMeHelper.save(email: email.text!, password: password.text!)
            } else {
                defaults.set(false, forKey: "remember")
            }
            
            print("login successful")
            errorLabel.text = ""
            self.performSegue(withIdentifier: "TabSegue1", sender: self)
        } else {
            print("login unsuccessful")
            errorLabel.text = LoginConstants.invalidLoginCredentails.rawValue
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

