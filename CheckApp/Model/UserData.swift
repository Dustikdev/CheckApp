//
//  UserData.swift
//  CheckApp
//
//  Created by Никита Швец on 14.10.2022.
//

import Foundation

struct ShopVCData {
    var shopAdress: String?
    var shopName: String?
    var purchaseCategory: String?
    var comment: String?
    var purchaseVCData: [PurchaseVCData]?
    
    init(shopAdress: String?, shopName: String?, purchaseCategory: String?, comment: String?, purchaseVCData: [PurchaseVCData]?) {
        self.shopAdress = shopAdress
        self.shopName = shopName
        self.purchaseCategory = purchaseCategory
        self.comment = comment
        self.purchaseVCData = purchaseVCData
    }
    
    
    
//    init(text: String) {
//        self.text = text
//    }
}

struct PurchaseVCData {
    var purchaseCost: Double?
    var purchaseName: String?
    var purchaseCount: Int?
    var purchaseTotal: Double?
    
    init(purchaseCost: Double?, purchaseName: String?, purchaseCount: Int?, purchaseTotal: Double?) {
        self.purchaseCost = purchaseCost
        self.purchaseName = purchaseName
        self.purchaseCount = purchaseCount
        self.purchaseTotal = purchaseTotal
    }
}
