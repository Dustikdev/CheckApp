//
//  RachunRepositry.swift
//  CheckApp
//
//  Created by Никита Швец on 21.10.2022.
//

import Foundation


final class RachunRepository {
    let networkManager = NetworkManager()
    let converter = RawTextToCheckConverter()
    
    func getRachuns(url: String, completion: @escaping(Result<Check, Error>) -> Void) {
        networkManager.fetchData(url: url) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case let .success(rawText):
                guard let shopVcData = self.converter.convert(rawText: rawText) else {
                    completion(.failure(NSError()))
                    return
                }
                completion(.success(shopVcData))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }
}
