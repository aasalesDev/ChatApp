//
//  ChannelVC.swift
//  ChatApp
//
//  Created by Anderson Sales on 22/02/23.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewRevealWidth()
    }
    
    private func configureViewRevealWidth() {
        self.revealViewController().rearViewRevealWidth = view.frame.size.width - 80
    }
}
