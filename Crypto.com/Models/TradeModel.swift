//
//  TradeModel.swift
//  Crypto.com
//
//  Created by Vincenzo Pascarella on 14/12/21.
//

import Foundation

struct TradeModel{
    private(set) var tradesList: [Trades]
    
    init(listCounts: Int, listHeader: (Int) -> String, listSymbol: (Int) -> Array<String>, listText: (Int) -> Array<String> ){
        tradesList = []
        for listIndex in 0..<listCounts{
            let header = listHeader(listIndex)
            let symbol = listSymbol(listIndex)
            let text = listText(listIndex)
            tradesList.append(Trades(footer: header, listSymbols: symbol, listNames: text, id: listIndex))
        }
        // iterare un array esterno che indica il footer ed un array di array che sono i listNames
    }
    
    
    struct Trades: Identifiable{
        let footer: String
        let listSymbols: [String]
        let listNames: [String]
        let id: Int
    }
    
    
}
