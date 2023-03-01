//
//  CreateAccountVC.swift
//  ChatApp
//
//  Created by Anderson Sales on 01/03/23.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // This function dismiss two screens (similar to going to rootViewController) - Go from First Responder to Exit (unwind segue)
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "GoToChannelVC", sender: nil)
    }
    
    
}
