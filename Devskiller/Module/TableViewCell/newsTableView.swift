//
//  NewsTableViewCell.swift
//  Devskiller
//
//  Created by VAMOSYS DRS on 19/07/22.
//  Copyright © 2022 Mindera. All rights reserved.
//

import UIKit
import Kingfisher

class NewsTableViewCell: UITableViewCell, NibLoadableView {

    @IBOutlet weak var missonPatchImageView: UIImageView!
    @IBOutlet weak var missonNameLabel: UILabel!
    @IBOutlet weak var missonDateLabel: UILabel!
    @IBOutlet weak var rocketNameLabel: UILabel!
    @IBOutlet weak var currentTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setCell(index:Int) {
        let info = NewsArray.info[index]
        
        
//        missonNameLabel.text = info.mission_name
//        missonDateLabel.text = timeStampToDate(timeStamp: info.launch_date_unix, dateFormat: "yyyy-MM-dd hh:mm:ss a")
//        currentTimeLabel.text = timeStampToDate(timeStamp:info.launch_date_unix).timeAgoDisplay()
        
//        let rocket = info.rocket
//        if let rocket_name = rocket["rocket_name"] as? String {
//            rocketNameLabel.text = rocket_name
//        }
//
//        let link = info.links
//
//        if let mission_patch = link["mission_patch"] as? String {
//            missonPatchImageView.kf.setImage(with:  URL(string: mission_patch)!, placeholder: UIImage(named: "placeHolderImage"))
//        }
    }
}
