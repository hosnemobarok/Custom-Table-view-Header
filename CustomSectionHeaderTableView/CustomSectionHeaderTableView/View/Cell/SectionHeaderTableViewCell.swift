//
//  SectionHeaderTableViewCell.swift
//  CustomSectionHeaderTableView
//
//  Created by Md Hosne Mobarok on 22/10/21.
//

import UIKit

class SectionHeaderTableViewCell: UITableViewCell {
    @IBOutlet weak var sectionLable: UILabel!
    @IBOutlet weak var sectionNextBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func configure(text: String){
        sectionLable.text = text
    }
}
