//
//  ReuseableCell.swift
//  TableViewSectionPratice
//
//  Created by (^ㅗ^)7 iMac on 2023/07/25.
//
//
import UIKit

class ReuseableCell: UITableViewCell {

    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var cellNameLabel: UILabel!
    @IBOutlet weak var cellStateLabel: UILabel!
    @IBOutlet weak var onOffSwitch: UISwitch!
    @IBOutlet weak var layerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.frame.size.height = 44
    }
    
    func configure(_ list: Model) {
        layerView.layer.cornerRadius = 5
        
        iconImage.image = UIImage(systemName: list.iconImage)
        iconImage.tintColor = .white

        cellNameLabel.text = list.cellName
        cellNameLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        cellStateLabel.text = list.cellState
    }
}
