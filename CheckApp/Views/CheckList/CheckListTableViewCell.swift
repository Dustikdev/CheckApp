//
//  CheckListTableViewCell.swift
//  CheckApp
//
//  Created by Никита Швец on 14.10.2022.
//

import UIKit

class CheckListTableViewCell: UITableViewCell {

    @IBOutlet weak var checkListCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
