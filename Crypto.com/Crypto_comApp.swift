//
//  Crypto_comApp.swift
//  Crypto.com
//
//  Created by Vincenzo Pascarella on 14/12/21.
//

import SwiftUI

@main
struct Crypto_comApp: App {
    @StateObject private var vm = HomeViewModel()
    @StateObject private var tm = TradeViewModel()
    
    init() {
        UITableView.appearance().showsVerticalScrollIndicator = false
        UITabBar.appearance().barTintColor = .systemBackground
        
    }
    
    var body: some Scene {
        WindowGroup {
            TabView {
                HomeView()
                    .tabItem{
                        Label("Markets", systemImage: "chart.bar.xaxis")
                    }
                BalanceView()
                    .tabItem{
                        Image("wallet").renderingMode(.template).resizable().scaledToFit()
                        Text("Wallet")
                    }
                TradeView()
                    .tabItem {
                        Label("Trade", systemImage: "arrow.left.arrow.right.circle.fill")
                    }
            }
            .environmentObject(vm)
            .environmentObject(tm)
            .accentColor(.blue)
        }
    }
}
