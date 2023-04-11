//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Кирилл Лапковский on 02.04.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeTextLabel: UILabel!
    
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeTextLabel.text = welcomeText
    }
    
    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        
    }
    
  
    

}
