//
//  CustomTableViewCell.swift
//  CustomSectionHeaderTableView
//
//  Created by Md Hosne Mobarok on 22/10/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var Img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
//    public func configure(text: String, image: UIImage) {
//        nameLabel.text = text
//        Img.image = image
//    }
    
}
