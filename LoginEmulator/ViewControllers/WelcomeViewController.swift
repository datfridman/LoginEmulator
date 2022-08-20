//
//  WelcomeViewController.swift
//  LoginEmulator
//
//  Created by Leon Fridman on 8/11/22.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var nickName: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Hey, " + nickName + "!"
    }
}
