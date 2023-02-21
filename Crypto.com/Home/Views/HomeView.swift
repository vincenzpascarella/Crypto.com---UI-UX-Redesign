//
//  HomeView.swift
//  Crypto.com
//
//  Created by Vincenzo Pascarella on 14/12/21.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var vm: HomeViewModel

    
    var body: some View {
        VStack {
            homeHeader
            HomeNewsView()
            viewTitle
            SortingView()
            allCoinsList
            Spacer(minLength: 0)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(dev.homeVM)
    }
}

extension HomeView{
    
    private var homeHeader: some View {
        HStack {
            Button{
                
            } label: {
                Image(systemName: "person.circle").foregroundColor(Color(.systemBlue))
            }
            
            Spacer()
            Spacer()
            
            Text("Crypto")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color.primary)
                .animation(.none)
                .padding(.horizontal)

            
            Spacer()
            
            Button{
                
            } label: {
                Image(systemName: "magnifyingglass").foregroundColor(Color(.systemBlue))
            }
            .padding(.horizontal)
            
            Button{
                
            } label: {
                Image(systemName: "qrcode.viewfinder").foregroundColor(Color(.systemBlue))
            }
        }
        .padding()
        .background(Color(.systemGray6).edgesIgnoringSafeArea(.bottom).edgesIgnoringSafeArea(.top))
    }
    
    private var viewTitle: some View{
        HStack{
            Text("Markets")
                .font(.system(size: 21, weight: .semibold, design: .default))
                .padding(.horizontal)
                .padding(.top)
            Spacer()
        }
        .frame(maxWidth: UIScreen.main.bounds.size.width)
        .background(Color(.systemGray6))
    }
    
    private var allCoinsList: some View {
        List {
            ForEach(vm.allCoins) { coin in
                CoinRowView(coin: coin)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
                    .onTapGesture {
                        //Func to open the coin details
                    }
                    .listRowBackground(Color.primary.colorInvert())
            }
        }
        .listStyle(.plain)
        .padding(0)
    }
}
