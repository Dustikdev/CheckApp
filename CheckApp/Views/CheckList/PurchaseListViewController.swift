//
//  CheckListViewController.swift
//  CheckApp
//
//  Created by Никита Швец on 14.10.2022.
//

import UIKit

class PurchaseListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var checkListTableView: UITableView!
    
//    let purchase: [String] = ["Apple", "Meat", "Cheese", "Cucumber", "Big black dildo"]
    var check = Check()

    override func viewDidLoad() {
        super.viewDidLoad()

        let cellNib = UINib(nibName: String(describing: PurchaseCell.self), bundle: nil)
        checkListTableView.register(cellNib, forCellReuseIdentifier: "PurchaseCell")
        
        checkListTableView.delegate = self
        checkListTableView.dataSource = self
//        self.navigationController?.navigationBar.prefersLargeTitles = true
//        title = "fsfsdfsdf"
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.purchase.count
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PurchaseCell") as! PurchaseCell
        cell.purchaseLabel.text = check.items[indexPath.row].purchaseName
//        cell.purchaseLabel.text = purchase[indexPath.row]
        return cell
        
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
    

    

}


