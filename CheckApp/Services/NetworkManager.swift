//
//  NetworkManager.swift
//  CheckApp
//
//  Created by Никита Швец on 21.10.2022.
//

import Foundation


final class NetworkManager {
    
    func fetchData(url: String, completion: @escaping ((Result<String?, Error>) -> Void)) {
        let rawText = mockData
//        completion(.success(rawText))
        let dirtyList = rawText.split(separator: "\n").map { String($0).trimmingCharacters(in: .whitespacesAndNewlines) }
//        func cleanupData(list: [String]) -> [String] {
//            let firstIndex = list.firstIndex(where: { $0.contains("panel-collapse collapse")})
//            let lastIndex = list.lastIndex(where: { $0.contains("Готовина")})
//            let cleanData = Array(list[firstIndex!...lastIndex!])
//            return cleanData
//        }
    }
}

