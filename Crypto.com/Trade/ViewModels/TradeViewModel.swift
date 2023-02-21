//
//  TradeViewModel.swift
//  Crypto.com
//
//  Created by Vincenzo Pascarella on 14/12/21.
//

import SwiftUI

class TradeViewModel: ObservableObject{
    
    private var listModel: TradeModel = createLists()
    
    static let footerList = ["Trade", "Spend", "Finance", "Rewards"]
    
    static let listNames = [tradeNames, spendNames, financeNames, rewardsNames]
    static let listSymbols = [tradeSymbols, spendSymbols, financeSymbols, rewardsSymbols]

    
    static let tradeNames = ["Spot", "Margin", "Fiat", "Convert"]
    static let tradeSymbols = ["diamond.circle", "arrow.up.forward.circle", "dollarsign.circle", "repeat.circle"]

    static let spendNames = ["Card", "  Pay"]
    static let spendSymbols = ["creditcard", "bag"]
    
    static let financeNames = ["Supercharger", "Credit", "Earn"]
    static let financeSymbols = ["bolt", "square.text.square", "star.circle"]
    
    static let rewardsNames = ["Missions", "Bonus", "Refer"]
    static let rewardsSymbols = ["flag", "gift", "person.crop.circle.badge.plus"]
    
    static func createLists() -> TradeModel{
        TradeModel(listCounts: footerList.count, listHeader: {index in footerList[index]}, listSymbol: {index in listSymbols[index]}, listText: {index in listNames[index]})
    }
    
    var tradesList: [TradeModel.Trades]{
        return listModel.tradesList
    }
}
