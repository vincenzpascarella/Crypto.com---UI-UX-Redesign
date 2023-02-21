//
//  NewsModel.swift
//  Crypto.com
//
//  Created by Vincenzo Pascarella on 13/12/21.
//

import Foundation

struct NewsModel{
    private(set) var news: [News]
    
    init (newsCount: Int, newsContent: (Int) -> Array<String> ){
        news = Array<News>()
        for newsIndex in 0..<newsCount{
            let content = newsContent(newsIndex)
            news.append(News(title: content[0], bodyText: content[1], imageName: content[2], id: newsIndex))
        }
        
    }
    
    struct News: Identifiable{
        let title: String
        let bodyText: String
        let imageName: String
        let id: Int
    }
}
