//
//  TradeView.swift
//  Crypto.com
//
//  Created by Vincenzo Pascarella on 14/12/21.
//

import SwiftUI

struct TradeView: View {
    @EnvironmentObject var tradeVM: TradeViewModel
    
    var body: some View {
        VStack{
        tradeHeader
            List{
            ForEach(tradeVM.tradesList){ list in
                Section(header: Text(list.footer)){
                    TradeRow(trade: list)
                }
            }
        }
        .listStyle(.insetGrouped)
        .padding(.top, -8)
        }
    }
}

struct TradeView_Previews: PreviewProvider {
    static var previews: some View {
        TradeView().environmentObject(dev.tradeVM)
    }
}

struct TradeRow: View{
    let trade: TradeModel.Trades
    
    var body: some View{
        ForEach(Array(zip(trade.listNames, trade.listSymbols)), id: \.0){ item in
            Button{
                
            } label: {
                HStack{
                    Image(systemName: item.1)
                    Text(item.0)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
            }
            .foregroundColor(.primary)
            
        }
    }
}

extension TradeView{
    private var tradeHeader: some View {
        HStack {
            Button{
                
            } label: {
                Image(systemName: "envelope.badge").foregroundColor(Color(.systemBlue))
            }
            
            Spacer()
            Spacer()
            
            Text("Trading")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color.primary)
                .animation(.none)
                .padding(.horizontal)
            
            Spacer()
            
            Button{
                
            } label: {
                Image(systemName: "bell").foregroundColor(Color(.systemBlue))
            }
            .padding(.horizontal)
            
            Button{
                
            } label: {
                Image(systemName: "doc.text").foregroundColor(Color(.systemBlue))
            }
        }
        .padding()
        .background(Color(.systemGray6).edgesIgnoringSafeArea(.bottom).edgesIgnoringSafeArea(.top))
    }
}
