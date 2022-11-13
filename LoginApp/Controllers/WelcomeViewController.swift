//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Sosin Vladislav on 31.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    
    var user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradient()
        welcomeLabel.text = "Welcome, \(user.person.fullName)!"
    }
    
    private func setGradient() {
        let gradient = CAGradientLayer()
        let blue = UIColor(red: 10/255, green: 91/255, blue: 133/255, alpha: 1)
        let green = UIColor(red: 0, green: 146/255, blue: 139/255, alpha: 1)
        gradient.colors = [blue.cgColor, green.cgColor, green.cgColor]
        gradient.locations = [0, 0.3, 1]
        gradient.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        view.layer.insertSublayer(gradient, at: 0)
    }
}
