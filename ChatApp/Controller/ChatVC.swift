//
//  ChatVC.swift
//  ChatApp
//
//  Created by Anderson Sales on 22/02/23.
//

import UIKit

class ChatVC: UIViewController {

    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var chatLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addButtonAction()
        addSlidingCapability()
    }
    
    private func addButtonAction() {
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
    }
    
    private func addSlidingCapability() {
        view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

}

