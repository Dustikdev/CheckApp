//
//  ViewController.swift
//  CheckApp
//
//  Created by Никита Швец on 12.10.2022.
//

import UIKit

class ShopListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var shopListTableView: UITableView!
    
    
    
    // Data model: These strings will be the data for the table view cells
    let shops: [String] = ["Пятерочка", "Лента", "Самбери", "Ашан", "У Вазгена"]
    let purchase: [String] = ["Apple", "Meat", "Cheese", "Cucumber", "Big black dildo"]
    
    // cell reuse id (cells that scroll out of view can be reused)
//    let cellReuseIdentifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.checkListViewTable.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        let cellNib = UINib(nibName: String(describing: ShopListTableViewCell.self), bundle: nil)
        shopListTableView.register(cellNib, forCellReuseIdentifier: "ShopCell")
        
        
        // (optional) include this line if you want to remove the extra empty cell divider lines
        // self.tableView.tableFooterView = UIView()
        
        // This view controller itself will provide the delegate methods and row data for the table view.
        shopListTableView.delegate = self
        shopListTableView.dataSource = self
        
    }
    
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.shops.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShopCell") as! ShopListTableViewCell
        cell.checkCell.text = shops[indexPath.row]
        return cell
        
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
        
    }
    
    
}

