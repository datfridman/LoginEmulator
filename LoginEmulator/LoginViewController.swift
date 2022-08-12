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
    
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if userTextField.text == "User" && passwordTextField.text == "Password"  {
            return true
        }else {
            showAlert(with: "Wrong Credentials", and: "Please check you login and password")
            return false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nickName = userTextField.text ?? ""
        let welcomeVC = segue.destination as? WelcomeViewController
        
        welcomeVC?.nickName = nickName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
// MARK: - IBActions
    
    @IBAction func loginButtonPressed() {
    }

    @IBAction func forgotNameButtonPressed() {
        showAlert(with: "🥲 Oups", and: "Your login is User")
    }
    
    @IBAction func forgotPassButtonPressed() {
        showAlert(with: "🔐 Password", and: "Your password is Password")
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        passwordTextField.text = ""
        userTextField.text = ""
    }
}

// MARK: - AlertController

extension LoginViewController {
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(
            title: title,
            message: massage,
            preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
