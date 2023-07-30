//
//  ProfileCell.swift
//  TableViewSectionPratice
//
//  Created by (^ㅗ^)7 iMac on 2023/07/25.
//

import UIKit

class ProfileCell: UITableViewCell {


    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.frame.size.height = 86
        profileImage.layer.cornerRadius = profileImage.frame.size.height / 2
    }
    
    func configure(_ data: Model) {
        profileImage.image = UIImage(named: data.iconImage)
        profileImage.layer.cornerRadius = profileImage.frame.size.height / 2
        
        profileImage.clipsToBounds = true
        profileImage.contentMode = .scaleToFill
        
        nameLabel.text = data.cellName
        profileDescriptionLabel.text = data.cellState
        profileDescriptionLabel.adjustsFontSizeToFitWidth = true
    }
}
