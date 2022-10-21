//
//  UserData.swift
//  CheckApp
//
//  Created by Никита Швец on 14.10.2022.
//

import Foundation

struct Check {
    var shopAdress: String?
    var shopName: String?
    var purchaseCategory: String?
    var comment: String?
    var items: [Item] = []
    
    struct Item {
        var purchasePrice: Double?
        var purchaseName: String?
        var purchaseCount: Int?
        var purchaseTotal: Double?
    }
}
