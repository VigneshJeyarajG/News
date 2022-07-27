//
//  NewsListTableViewCell.swift
//  Devskiller
//
//  Created by Vamosys on 26/07/22.
//  Copyright © 2022 Mindera. All rights reserved.
//

import UIKit
import Kingfisher

class NewsListTableViewCell: UITableViewCell, NibLoadableView {
    
    @IBOutlet var authorNameLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var newsImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setCell(index:Int) {
        if NewsArray.info.count != 0 {
            let info = NewsArray.info[index]
            authorNameLabel.text = info.author
            titleLabel.text = info.title
            print(info.publishedAt)
            timeLabel.text = getDate(dateString: info.publishedAt)?.timeAgoDisplay()
            newsImageView.kf.setImage(with:  URL(string: info.urlToImage)!, placeholder: UIImage(named: "placeHolderImage"))
        }
    }
}
