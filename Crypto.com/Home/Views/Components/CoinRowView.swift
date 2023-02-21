//
//  CoinRowView.swift
//  Crypto.com
//
//  Created by Vincenzo Pascarella on 14/12/21.
//

import SwiftUI

struct CoinRowView: View {
        
    let coin: CoinModel
    
    var body: some View {
        HStack(spacing: 0) {
            leftColumn
            Spacer()
            ChartView(coin: coin)
                .frame(width: UIScreen.main.bounds.width / 3.5, height: 30)
                .scaleEffect(x: 0.7, y: 0.1, anchor: .center)
            rightColumn
        }
        .font(.subheadline)
    }
}

extension CoinRowView{
    
    private var leftColumn: some View {
        HStack(spacing: 0) {
            CoinImageView(coin: coin)
                .frame(width: 30, height: 30)
                .padding(.horizontal)
            VStack(alignment: .leading){
            Text(coin.symbol.uppercased())
                .font(.headline)
                .foregroundColor(Color.primary)
                
                Text(coin.name)
                    .foregroundColor(.gray)
            }
        }
    }
    
    private var rightColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentPrice.asCurrencyWith6Decimals())
                .bold()
                .foregroundColor(.primary)
            Text(coin.priceChangePercentage24H?.asPercentString() ?? "")
                .foregroundColor(
                    (coin.priceChangePercentage24H ?? 0 >= 0) ?
                    .green :
                    .red
                )
        }
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
    }
}
