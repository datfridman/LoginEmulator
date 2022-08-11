//
//  ViewController.swift
//  LoginEmulator
//
//  Created by Leon Fridman on 8/11/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    
    
    @IBAction func loginButtonPressed() {
        
    }

    @IBAction func forgotNameButtonPressed() {
        showAlert(with: "Your username", and: "Use User as your login")
    }
    
    @IBAction func forgotPassButtonPressed() {
        showAlert(with: "Your password", and: "Use Password as your pass")
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(
            title: title,
            message: massage,
            preferredStyle: .alert)
 
 // Setup Button
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordTextField.text = ""
        }
    
// Add Button
        alert.addAction(okAction)

// Show Alert
        present(alert, animated: true)
    }
}
