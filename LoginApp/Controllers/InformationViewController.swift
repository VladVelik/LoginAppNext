//
//  InformationViewController.swift
//  LoginApp
//
//  Created by Sosin Vladislav on 13.11.2022.
//

import UIKit

final class InformationViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var universityLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    
    var user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Brief information"
        nameLabel.text = user.person.name
        universityLabel.text = "univ: " + user.person.university
        ageLabel.text = "age: " + String(user.person.age)
        surnameLabel.text = user.person.surname
        
        nameLabel.textColor = .red
        surnameLabel.textColor = .blue
        ageLabel.textColor = .green
        universityLabel.textColor = .purple
    }
}
