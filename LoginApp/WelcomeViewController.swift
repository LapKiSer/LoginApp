//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Кирилл Лапковский on 02.04.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func logOutAction() {
        dismiss(animated: true)
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
