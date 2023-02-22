//
//  ChannelVC.swift
//  ChatApp
//
//  Created by Anderson Sales on 22/02/23.
//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewRevealWidth()
    }
    
    private func configureViewRevealWidth() {
        self.revealViewController().rearViewRevealWidth = view.frame.size.width - 80
    }
}
