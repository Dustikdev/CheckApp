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
        completion(.success(rawText))
        

    }
    
    
    
}


