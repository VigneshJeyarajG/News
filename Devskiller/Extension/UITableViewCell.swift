//
//  UITableViewCell.swift
//  Devskiller
//
//  Created by VAMOSYS DRS on 20/07/22.
//  Copyright © 2022 Mindera. All rights reserved.
//

import UIKit

extension UITableViewCell: ReusableView { }

extension UITableViewCell {
    func getDate(dateString:String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.locale = Locale.current
        return dateFormatter.date(from: dateString)
    }
}
