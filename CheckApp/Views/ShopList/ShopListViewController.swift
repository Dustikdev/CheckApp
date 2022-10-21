//
//  ViewController.swift
//  CheckApp
//
//  Created by Никита Швец on 12.10.2022.
//

import UIKit

class ShopListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var shopListTableView: UITableView!
    
    let shops: [String] = ["Пятерочка", "Лента", "Самбери", "Ашан", "У Вазгена"]

    private let repository = RachunRepository()
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        //        getDataFromURL()
//        convertDataFromURL()
        //        title = "List of shops"
        //        self.navigationController?.navigationBar.prefersLargeTitles = true
        let cellNib = UINib(nibName: String(describing: ShopListTableViewCell.self), bundle: nil)
        shopListTableView.register(cellNib, forCellReuseIdentifier: "ShopCell")
        shopListTableView.delegate = self
        shopListTableView.dataSource = self
        repository.getRachuns(
            url: "mock",
            completion: { result in
                switch result {
                    
                case let .success(shopVCData):
//                    self.shop = shopVCData
//                    tableView.reloadData()
                    break
                case let .failure(error):
                    print(error.localizedDescription)
                }
            }
        )
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.shops.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShopCell") as! ShopListTableViewCell
        //        cell.purchaseCategoryLabel.text = shops[indexPath.row]
        //        cell.purchaseCategoryLabel.text = userDataFromCheck.purchaseCategory
        //        cell.commentLabel.text = userDataFromCheck.comment
        //        cell.costLabel.text = userDataFromCheck.purchaseCost
        //        cell.shopNameLabel.text = userDataFromCheck.shopName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        print("You tapped cell number \(indexPath.row).")
        let checkSB = UIStoryboard(name: "CheckList", bundle: nil)
        let vc = checkSB.instantiateViewController(withIdentifier: "CheckListVC")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection
                   section: Int) -> String? {
        return "Header \(section)"
    }
}

//MARK: - configureNavigationBar

extension ShopListViewController {
    
    func configureNavigationBar() {
        let plus = UIBarButtonItem(image: UIImage(systemName: "plus.app"), style: .plain, target: self, action: #selector(closeButtonDidTapped))
        //        let chat = UIBarButtonItem(title: "Chat", style: .done, target: self, action: #selector(closeButtonDidTapped))
        //        navigationItem.leftBarButtonItems = [shevron, chat]
        navigationItem.rightBarButtonItem = plus
        title = "List of shops"
    }
    
    @objc func closeButtonDidTapped() {
        
    }
}
//MARK: - getDataFromURL

extension ShopListViewController {
    
    func getDataFromURL() {
        let sourceURL = "https://suf.purs.gov.rs/v/?vl=A1E0TU05QUVVUTRNTTlBRVUhPQEADD0BAFxOQQAAAAAAAAABg8eUw9IAAABHpeP5bDf%2FwAM0IsZMIcJcqXwB2bFAawxO718vMBjnaglHEH40hdrrrYKzoDV2M99dCQCth0JRpxpnlYJvtv4bld8wa7HVWANMkz2rSoFx7vdVmrf1Bc6h%2F%2FubDztOO9N29L%2FB06H14TG1guqX3PlOA%2BMuVUxXYoH%2F%2BgKm4b%2Fu12iPrEPeG3TPrxcZMdvtGnNVQbf7UAUTFlnSBtOzSA6NvtrDo5gtxD4jyJaNXvSNF4pAnDWRyiB4DwGVEjBM1senmtcu9S8RqtS0SiiQ43nomD%2BlppSz8Ibd6ZSKouGHB1uPk4xzPc5SsNqfKyHIZ8oC5fO9NxstfOPtL%2Bamx3eLkRwYLr4%2F5jdbuC7PK%2B3VJPQO3J%2FvSn7QqpzbncDX2wEVOcoCTMoUQTbtrBDdw3Q40TeR%2FQ9O6aAh1eZANY91blePoh2y9PjkCOEel4LOvmOtUdwuRkWqkMu6Aw3H6q71tsWRusIcj2QqlT5h30oLCoonVj8ELNuZrvRF4p3vT3047g%2Bzi92rCUavE7CSiTklfXo6cCu676efnQAOhRc%2BkgormMBoFyoU0u5EUnCPORRW6HVnd0PqEy54Cq%2Fgi1Vco0%2BMJdI%2BLycKCALd3TRXwPQiYdvv9g0az7L7Fwiw1V3ffpwFN%2FTPt2DfT6z1Ut%2FFtF3h4o2aJ2TebpahfnpnakiKPOHjFVi7p%2FiE6WoRvow%3D"
        
        let url = URL(string: sourceURL)!
        let task = URLSession.shared.dataTask(with: url)
        {
            (data, response, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
            //            let tempHTML = String(data: data, encoding: .utf8)!
            //            convert(text: tempHTML)
        }
        task.resume()
    }
}







