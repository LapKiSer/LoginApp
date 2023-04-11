//
//  ViewController.swift
//  LoginApp
//
//  Created by Кирилл Лапковский on 02.04.2023.
//

import UIKit

final class MainViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeText = "Welcome \(userNameTF.text ?? "")!"
    }
    
    @IBAction func logInTaped(_ sender: Any) {
        guard let userNameTF = userNameTF.text else { return }
        guard let passwordTF = passwordTF.text else { return }
        
        userNameTF == "User" && passwordTF == "Password" ?
        performSegue(withIdentifier: "showWelcomeVC", sender: nil) :
        showAlert(withTitle: "User name or Password WRONG", andMessage: "Please enter correct data!")
    }
    
    @IBAction func forgotUserTaped(_ sender: Any) {
        showAlert(withTitle: "OOOooops!", andMessage: "Your name is User")
    }
    
    @IBAction func forgotPasswordTaped(_ sender: Any) {
        showAlert(withTitle: "OOOooops!", andMessage: "Your password is Password")

    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

