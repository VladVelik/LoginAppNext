//
//  ViewController.swift
//  LoginApp
//
//  Created by Sosin Vladislav on 31.10.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    private let user = User.getUser()
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.destination is WelcomeViewController else { return }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInPressed(_ sender: Any) {
        if (userNameTextField.text == user.login &&
            passwordTextField.text == user.password) {
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
        ? showMyAlert(title: "Hmmm", message: "Your name is \(user.login)!")
        : showMyAlert(title: "Hmmm", message: "Your password is \(user.password)!")
    }
    
    private func showMyAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
}

