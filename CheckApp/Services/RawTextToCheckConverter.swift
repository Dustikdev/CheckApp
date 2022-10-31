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
        var check = convertToItem(strings: cleanupList)
        check.comment = "no comment"
        check.purchaseCategory = "no category yet"
        check.shopName = cleanupList[5]
        check.shopAdress = cleanupList[6]
//        print(check)
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
        let j = 0
        while i < strings.count - 3 {
            var item = Check.Item()
            let splittedValues = strings[i].split(separator: " ").map { String($0) }
//            print(splittedValues)
            let price = splittedValues[j]
            let name = strings[i-1]
            let count = splittedValues[j+1]
            let totalPrice = splittedValues[j+2]
            item.purchasePrice = Double(price.replacingOccurrences(of: ",", with: "."))
//            print(count)
            item.purchaseName = name
            item.purchaseCount = Int(count)
            item.purchaseTotal = Double(totalPrice.replacingOccurrences(of: ",", with: "."))
            check.items.append(item)
            i += 2
        }
        return check
    }
}
