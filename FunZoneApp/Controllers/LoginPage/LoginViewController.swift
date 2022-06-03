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
        let emailDefault = defaults.string(forKey: userDefaultEmailKey)
        let passDefault = RememberMeHelper.get(email: emailDefault!)
        
        if (emailDefault != nil) {
            email.text = emailDefault
            password.text = passDefault
        }
    }
    
    @IBAction func login(_ sender: Any) {
        
        // error handling for login credentials
        do {
            try validateLoginCredentials(email: email.text!, password: password.text!)
        } catch LoginErrors.invalidLoginCredentials {
            errorLabel.text = invalidLoginCredentails
        } catch {
            errorLabel.text = unknownLoginError
        }
        
        // MARK: - implement code to check user against users database
        let existingUser = DBHelperClass.dbHelper.userExists(email: email.text!)
        if (existingUser) {
            // remember user
            if (remember.isOn) {
                RememberMeHelper.save(email: email.text!, password: password.text!)
            }
            
            print("login successful")
            errorLabel.text = ""
            self.performSegue(withIdentifier: "TabSegue1", sender: self)
        } else {
            print("login unsuccessful")
            errorLabel.text = noUserFound
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

