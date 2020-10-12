//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "ED2FD7FE-0A57-4098-8D11-D09ED29E2689"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getCoinPrice(for currency: String){
        let stringURL = "\(baseURL)/\(currency)"
        print(stringURL)
        performRequest(with: stringURL)
    }
    
    func performRequest(with urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) {(data, response, error) in
                if error != nil {
//                    self.delegate?.didFailWithError(error)
//                    return nil
                }
//                if let safeData = data {
//                    if let bitcoinData = self.parseJSON(data) {
//                        self.delegate?.didUpdatePrice(bitcoinData: bitcoinData)
//                    }
//                }
            }
            task.resume()
        }
    }

//    func parseJSON(_ bitcoinData: BitcoinData) -> BitcoinModel? {
//        let decoder = JSONDecoder()
//        do {
//            let decodedData = try decoder.decode(<#T##type: Decodable.Protocol##Decodable.Protocol#>, from: <#T##Data#>)
//        }
//    }
    
}
