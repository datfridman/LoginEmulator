//
//  BioViewController.swift
//  LoginEmulator
//
//  Created by Leon Fridman on 8/21/22.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet var bioLabel: UILabel!
    
    var user = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bioLabel.text = user.bio
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
