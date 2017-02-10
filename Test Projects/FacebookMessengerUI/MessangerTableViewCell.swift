//
//  MessangerTableViewCell.swift
//  FacebookMessengerUI
//
//  Created by  Калоян Тодоров on 2/10/17.
//  Copyright © 2017  Калоян Тодоров. All rights reserved.
//

import UIKit

protocol MessangerTableViewCellDelegate {
    func didPressRecepientImage(inCell: MessangerTableViewCell)
}

class MessangerTableViewCell: UITableViewCell {

    
    @IBOutlet weak var recipientImageViewButton: UIButton!
    @IBOutlet weak var recepientNameLabel: UILabel!
    @IBOutlet weak var messageDetailsLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var statusImageView: UIImageView!
    
    var isSpecial: Bool! = false {
        didSet{
            switch isSpecial {
            case true:
                self.recipientImageViewButton.layer.borderWidth = 2.0
            case false:
                self.recipientImageViewButton.layer.borderWidth = 0.0
            default:
                break
            }
        }
    }
    
    var delegate: MessangerTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.recipientImageViewButton.layer.cornerRadius = self.recipientImageViewButton.frame.width / 2
        self.statusImageView.layer.cornerRadius = self.statusImageView.frame.height / 2
        
        
        self.recipientImageViewButton.layer.borderColor = UIColor.blue.cgColor
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func profileImageButtonTapped(_ sender: UIButton) {
        self.buttonWasPressed()
    }
    
    
    func buttonWasPressed() {
        self.delegate?.didPressRecepientImage(inCell: self)
    }

}
