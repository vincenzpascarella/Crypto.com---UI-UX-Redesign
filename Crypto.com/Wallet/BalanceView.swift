//
//  BalanceView.swift
//  Crypto.com
//
//  Created by Vincenzo Pascarella on 14/12/21.
//

import SwiftUI

struct BalanceView: View {
    var body: some View {
        VStack{
        balanceHeader
        Image("BalanceImage")
                .padding(.top, -16)
            Spacer()
        }
    }
}

struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView()
    }
}

extension BalanceView{
    private var balanceHeader: some View {
        HStack {
            Button{
                
            } label: {
                Image(systemName: "gearshape").foregroundColor(Color(.systemBlue))
            }
            
            Spacer()
            
            Text("Crypto Wallet")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color.primary)
                .animation(.none)
                .padding(.horizontal)
            
            Spacer()
            
            Button{
                
            } label: {
                Image(systemName: "clock.arrow.circlepath").foregroundColor(Color(.systemBlue))
            }
        }
        .padding()
        .background(Color(.systemGray6).edgesIgnoringSafeArea(.bottom).edgesIgnoringSafeArea(.top))
    }
}
