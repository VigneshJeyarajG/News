//
//  API.swift
//  Devskiller
//
//  Created by VAMOSYS DRS on 19/07/22.
//  Copyright © 2022 Mindera. All rights reserved.
//
import UIKit


struct API {
    static let liveUrl = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=af61475dea274ccea526bad2a121faac"
    struct NewsManager {
        static let trending = "\(API.liveUrl)"
    }
}
