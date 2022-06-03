//
//  SignUpViewController.swift
//  FunZoneApp
//
//  Created by Vincent Salinas on 5/26/22.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBorderRadius(view: &box1)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signup(_ sender: Any) {
        
        var status = false
        
        do {
            try validateSignUpCredentials(email: email.text!, password: password.text!, confirmPassword: confirmPassword.text!)
            status = true
        } catch LoginErrors.invalidLoginCredentials {
            
            errorLabel.text = invalidLoginCredentails
        } catch LoginErrors.passwordsDoNotMatch {
            errorLabel.text = passwordsDoNotMatch
        } catch {
            errorLabel.text = unknownSignUpError
        }
        
        // MARK: - add user to database code here
        if (status) {
            print("user successfully signed up")
            errorLabel.text = ""
            
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
