//
//  Satelite.swift
//  Devskiller
//
//  Created by VAMOSYS DRS on 20/07/22.
//  Copyright © 2022 Mindera. All rights reserved.
//

import UIKit

struct NewsInfo {
    
    dynamic var author = ""
    dynamic var title = ""
    dynamic var description = ""
    dynamic var url = ""
    dynamic var urlToImage = ""
    dynamic var publishedAt = ""
    dynamic var content = ""

    
    static func addInfo(_ info: [String: Any]) {
        
        var news = NewsInfo()
        
        if let author = info["author"] as? String {
            news.author = author
        }
        
        if let title = info["title"] as? String {
            news.title = title
        }
        
        if let description = info["description"] as? String {
            news.description = description
        }
        
        if let url = info["url"] as? String {
            news.url = url
        }
        
        if let urlToImage = info["urlToImage"] as? String {
            news.urlToImage = urlToImage
        }
        
        if let publishedAt = info["publishedAt"] as? String {
            news.publishedAt = publishedAt
        }
        
        if let content = info["content"] as? String {
            news.content = content
        }
        
        NewsArray.info.append(news)
    }
}

struct NewsArray {
    static var info = [NewsInfo]()
    static var detail = NewsInfo()
}



