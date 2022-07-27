//
//  WikipediaViewController.swift
//  Devskiller
//
//  Created by VAMOSYS DRS on 19/07/22.
//  Copyright © 2022 Mindera. All rights reserved.
//

import UIKit
import Kingfisher


class NewsDetailViewController: UIViewController {
    
    @IBOutlet var newsTitle: UILabel!
    @IBOutlet var newsImage: UIImageView!
    @IBOutlet var newsDescription: UITextView!
    @IBOutlet var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showData()
    }
    
    func showData() {
        newsTitle.text = NewsArray.detail.title
        newsDescription.text = NewsArray.detail.content
        newsImage.kf.setImage(with:  URL(string: NewsArray.detail.urlToImage)!, placeholder: UIImage(named: "placeHolderImage"))
        timeLabel.text = getDate(dateString:NewsArray.detail.publishedAt)?.timeAgoDisplay()
    }

    @IBAction func backTapped(_ sender: UIButton) {
       navigationController?.popViewController(animated: true)
    }
}
