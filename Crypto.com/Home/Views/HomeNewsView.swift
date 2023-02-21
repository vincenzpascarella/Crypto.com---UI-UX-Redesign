//
//  HomeNewsView.swift
//  Crypto.com
//
//  Created by Vincenzo Pascarella on 14/12/21.
//

import SwiftUI

struct HomeNewsView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    
    let news = NewsViewModel()
    
    var body: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    
                    Spacer(minLength: 16)
                    NewsButton(newsVM: news)
                    Spacer(minLength: 16)
                    
                }
            }
            .background(Color(.systemGray6))
            .padding(.vertical, -8)
        }
    }
}
