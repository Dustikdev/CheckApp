//
//  CheckListViewController.swift
//  CheckApp
//
//  Created by Никита Швец on 14.10.2022.
//

import UIKit

class CheckListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var checkListTableView: UITableView!
    
    let purchase: [String] = ["Apple", "Meat", "Cheese", "Cucumber", "Big black dildo"]

    override func viewDidLoad() {
        super.viewDidLoad()

        let cellNib = UINib(nibName: String(describing: CheckListTableViewCell.self), bundle: nil)
        checkListTableView.register(cellNib, forCellReuseIdentifier: "CheckListCell")
        
        checkListTableView.delegate = self
        checkListTableView.dataSource = self
//        self.navigationController?.navigationBar.prefersLargeTitles = true
//        title = "fsfsdfsdf"
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.purchase.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListCell") as! CheckListTableViewCell
        cell.checkListCell.text = purchase[indexPath.row]
        return cell
        
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
    

    

}


