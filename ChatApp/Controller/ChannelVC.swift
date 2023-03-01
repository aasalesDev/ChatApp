//
//  ChannelVC.swift
//  ChatApp
//
//  Created by Anderson Sales on 22/02/23.
//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var loginLabel: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var channelsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewRevealWidth()
        configureTableView()
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toLogin", sender: nil)
    }
    
    // This IBAction is not connected to anything. It is used to unwind from the last screen to here - First Responder to Exit
    @IBAction func goBackChannelVC(_ sender: UIStoryboardSegue) {
    }
    
    private func configureViewRevealWidth() {
        self.revealViewController().rearViewRevealWidth = view.frame.size.width - 80
    }
    
    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ChannelsCell.nib(), forCellReuseIdentifier: ChannelsCell.identifier)
    }
}

extension ChannelVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: ChannelsCell.identifier, for: indexPath) as? ChannelsCell {
            cell.configureCell()
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
}
