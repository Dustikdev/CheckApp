//
//  TableViewCell.swift
//  CheckApp
//
//  Created by Никита Швец on 13.10.2022.
//

import UIKit

class ShopListTableViewCell: UITableViewCell {

    @IBOutlet weak var checkCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
