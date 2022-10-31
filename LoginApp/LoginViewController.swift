//
//  ViewController.swift
//  LoginApp
//
//  Created by Sosin Vladislav on 31.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let userName = "Vladislav"
    private let password = "password"

    
    @IBAction func forgotSomethingPressed(_ sender: Any) {
        showMyAlert()
    }
    
    
    private func showMyAlert() {
        let alert = UIAlertController(title: "My Title", message: "This is my message.", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
}

