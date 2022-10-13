//
//  ViewController.swift
//  CheckApp
//
//  Created by Никита Швец on 12.10.2022.
//

import UIKit

class CheckListViewController: UIViewController {
    

    @IBOutlet weak var checkListViewTable: UITableView!
    
    
    // Data model: These strings will be the data for the table view cells
        let purchase: [String] = ["Apple", "Meat", "Cheese", "Cucumber", "Big black dildo"]
        
        // cell reuse id (cells that scroll out of view can be reused)
        let cellReuseIdentifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


}

