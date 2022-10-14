//
//  TableViewCell.swift
//  CheckApp
//
//  Created by Никита Швец on 13.10.2022.
//

import UIKit

class ShopListTableViewCell: UITableViewCell {

    @IBOutlet weak var purchaseCategoryLabel: UILabel!
    @IBOutlet weak var shopNameLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
