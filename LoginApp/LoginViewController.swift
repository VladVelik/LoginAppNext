//
//  ViewController.swift
//  LoginApp
//
//  Created by Sosin Vladislav on 31.10.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let userName = "Vladislav"
    private let password = "password"

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInPressed(_ sender: Any) {
        if (userNameTextField.text == userName &&
            passwordTextField.text == password) {
            performSegue(withIdentifier: "identifier", sender: nil)
        } else {
            showMyAlert(title: "Hmm", message: "Incorrect Username or password!")
            passwordTextField.text = ""
            return
        }
    }
    
    @IBAction func unwind(unwindSegue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func forgotSomethingPressed(_ sender: Any) {
        (sender as AnyObject).tag == 0
            ? showMyAlert(title: "Hmmm", message: "Your name is \(userName)!")
            : showMyAlert(title: "Hmmm", message: "Your password is \(password)!")
    }
    
    private func showMyAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
}

