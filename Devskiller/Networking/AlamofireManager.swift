//
//  AlamofireManager.swift
//  Devskiller
//
//  Created by VAMOSYS DRS on 19/07/22.
//  Copyright © 2022 Mindera. All rights reserved.
//

import UIKit
import Alamofire

class APIClient {
    
    static let shared = APIClient()

    func getNews(completion: @escaping (Bool, Error?) -> Void) {
        let url = API.NewsManager.trending
        NewsArray.info.removeAll()
        AF.request(url ,method: .get, parameters: nil, encoding: URLEncoding.default).responseJSON {response in
            switch response.result {
                case .success:
                if let value = response.value as? [String:Any] {
                    
                    if let articles = value["articles"] as? [[String:Any]] {
                        for article in articles {
                            NewsInfo.addInfo(article)
                        }
                    }
                }
                completion(true, nil)
                case .failure(let error):
                    completion(false, error)
            }
        }
    }
}
        
        
