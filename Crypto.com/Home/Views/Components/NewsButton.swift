//
//  NewsButton.swift
//  Crypto.com
//
//  Created by Vincenzo Pascarella on 13/12/21.
//

import SwiftUI

struct NewsButton: View{
    @ObservedObject var newsVM: NewsViewModel
    
    var body: some View{
        ForEach(newsVM.news){ news in
            ButtonView(news: news)
        }
        
    }
}

struct ButtonView: View{
    let news: NewsModel.News
    var body: some View{
        Button{
            
        } label: {
            HStack{
                VStack(alignment: .leading){
                    Text(news.title)
                        .font(.system(size: 17, weight: .light, design: .default))
                        .padding(.trailing)
                        .padding(.bottom, 8)
                        .foregroundColor(.primary)
                    
                    Text(news.bodyText)
                        .font(.system(size: 12, weight: .thin, design: .default))
                        .padding(.trailing)
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.leading)
                }
                Spacer()
                Image(news.imageName)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .scaledToFit()
            }
            .padding()
            .frame(width: UIScreen.main.bounds.size.width * 0.903)
            .background(Color.primary.colorInvert())
            .cornerRadius(14)
        }

        Spacer()
    }
}
