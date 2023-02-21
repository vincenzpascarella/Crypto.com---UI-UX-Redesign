//
//  SearchBarView.swift
//  Crypto.com
//
//  Created by Vincenzo Pascarella on 13/12/21.
//

import SwiftUI

struct SortingView: View {
    @State private var market = 0
    
    var body: some View {
        HStack {
            
            Picker("Market", selection: $market) {
                Text("All").tag(0)
                Text("Favourites").tag(1)
            }
            .pickerStyle(.segmented)
            .frame(maxWidth: UIScreen.main.bounds.width * 0.53)
            .padding(.leading)
            
            Spacer()
            
            Button{
                
            } label: {
                HStack{
                    Text("Order by: Rank")
                Image(systemName: "arrow.down").scaleEffect(0.6)
                }
            }
            .foregroundColor(Color(.systemBlue))
            .padding(.trailing)
            
        }
        .padding(.vertical)
        .background(Color(.systemGray6))
        .padding(.top, -16)
        .padding(.bottom, -8)
    }
}
