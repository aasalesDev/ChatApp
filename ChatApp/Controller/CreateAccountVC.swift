//
//  CreateAccountVC.swift
//  ChatApp
//
//  Created by Anderson Sales on 01/03/23.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func dismissButtonPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func createAccountButtonPressed(_ sender: UIButton) {
        if let mail = email.text, let pass = password.text {
            AuthService.instance.registerUser(email: mail, password: pass) { success in
                if success {
                    print("Uhulll...\(mail) => \(pass)")
                } else {
                    print("Oh no...\(pass) => \(mail)")
                }
            }
        }
    }
}
