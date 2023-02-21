//
//  NewsViewModel.swift
//  Crypto.com
//
//  Created by Vincenzo Pascarella on 13/12/21.
//

import SwiftUI

class NewsViewModel: ObservableObject {
    private var model: NewsModel = createNews()
    
    static let newsList = [firstNews, secondNews, thirdNews]
    
    static let firstNews = ["Buy crypto with $ now", "Transfer funds from your local bank account", "BlueCards"]
    static let secondNews = ["Send crypto to new friends", "Earn $50 for each new friend you refer", "ReferNews"]
    static let thirdNews = ["Booking.com", "Up to 25% OFF when you shop on the website", "BeachChair"]
    
    static func createNews() -> NewsModel{
        NewsModel(newsCount: 3){ newsIndex in
            newsList[newsIndex]
        }
    }
    
    var news: Array<NewsModel.News>{
        return model.news
    }
    
}
