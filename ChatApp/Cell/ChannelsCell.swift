//
//  ChannelsCell.swift
//  ChatApp
//
//  Created by Anderson Sales on 22/02/23.
//

import UIKit

class ChannelsCell: UITableViewCell {

    @IBOutlet weak var channelLabel: UILabel!
    
    static let identifier: String = String(describing: ChannelsCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureCell()
        
    }

    func configureCell() {
        channelLabel.textColor = .white
        channelLabel.text = "#Channel"
    }
    
}
