//
//  WelcomeViewController.swift
//  LoginEmulator
//
//  Created by Leon Fridman on 8/11/22.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var nickName: String = ""
    
    @IBOutlet var welcomeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Hey, " + nickName + "!"
    }
}
