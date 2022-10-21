//
//  RawTextToCheckConverter.swift
//  CheckApp
//
//  Created by Никита Швец on 21.10.2022.
//

import Foundation

final class RawTextToCheckConverter {
    
    func convertToCheck(rawText: String?) -> Check? {
        let cleanupList = cleanupData(list: rawText!)
        //        print(cleanupList)
        let check = convertToItem(strings: cleanupList)
        return check
    }
    
    //забираем из массива нужные строки
    func cleanupData(list: String) -> [String] {
        let dirtyList = list.split(separator: "\n").map { String($0).trimmingCharacters(in: .whitespacesAndNewlines)}
        let firstIndex = dirtyList.firstIndex(where: { $0.contains("panel-collapse collapse")})
        let lastIndex = dirtyList.lastIndex(where: { $0.contains("Готовина")})
        let cleanData = Array(dirtyList[firstIndex!...lastIndex!])
        return cleanData
    }
    
    func convertToItem(strings: [String]) -> Check {
        var check = Check()
        var i = 15
        while i < strings.count {
            var item = Check.Item()
            let splittedValues = strings[(15 + i)].split(separator: " ").map { String($0) }
//            splittedData.append(contentsOf: splittedValues)
            let count = splittedValues[0]
            let price = splittedValues[1]
            item.purchaseCount = count
            check.items.append(item)
            i += 2
            //            print(splittedData)
        }
        
        return check
    }
    
        
        //делим строку после названия на цену, количество, сумму и засовываем в массив
//        func splitCostData(list: [String], index: Int) -> [String] {
//            var i = 0
//            var splittedData = [String]()
//            while i < (index * 2) {
//                let splittedValues = list[(15 + i)].split(separator: " ").map { String($0) }
//                splittedData.append(contentsOf: splittedValues)
//                i += 2
//                //            print(splittedData)
//            }
//            return splittedData
//        }
    
    
    //считаем количество позиций в чеке
//    func getNumberOfPurchase(list: [String]) -> Int {
//        let firstIndex = list.firstIndex(where: { $0.contains("Назив")})
//        let lastIndex = list.lastIndex(where: { $0.contains("----------------------------------------")})
//        return Int((lastIndex! - firstIndex!)/2)
//    }
        
//        func fillingPurchaseData(cleanupList: [String],splittedCostData: [String], numberOfPurchase: Int) {
//            var purchaseData = Check(shopAdress: nil, shopName: nil, purchaseCategory: nil, comment: nil, items: nil)
//            purchaseData.shopAdress = cleanupList[6]
//            purchaseData.shopName = cleanupList[5]
//            purchaseData.purchaseCategory = "no category"
//            purchaseData.comment = "no comment"
//            purchaseData.items?[0].purchaseName = cleanupList[14]
//            print(purchaseData.items?[0].purchaseName)
//            var i = 0
//            var j = 0
//            while i < numberOfPurchase {
//                purchaseData.items?[i].purchaseName = cleanupList[14+j]
//                purchaseData.items?[i].purchaseCost = Double(splittedCostData[i])
//                purchaseData.items?[i].purchaseCount = Int(splittedCostData[i+1])
//                purchaseData.items?[i].purchaseTotal = Double(splittedCostData[i+2])
//                //            print(purchaseData.purchaseVCData?[i].purchaseName)
//                //            print(purchaseData.purchaseVCData?[i].purchaseCost)
//                //            print(purchaseData.purchaseVCData?[i].purchaseCount)
//                //            print(purchaseData.purchaseVCData?[i].purchaseTotal)
//                i += 3
//                j += 2
//            }
//            //        purchaseData.purchaseVCData
//        }
//
    
}
