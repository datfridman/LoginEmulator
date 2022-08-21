//
//  AboutViewController.swift
//  LoginEmulator
//
//  Created by Leon Fridman on 8/21/22.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var userPhoto: UIImageView!
    
    var user = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.name
        surnameLabel.text = user.surname
        ageLabel.text = String(user.age)
        companyLabel.text = user.company
        titleLabel.text = user.title
        userPhoto.image = UIImage(named: user.photo)
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
