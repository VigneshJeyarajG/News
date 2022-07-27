//
//  UIViewController.swift
//  Devskiller
//
//  Created by VAMOSYS DRS on 20/07/22.
//  Copyright © 2022 Mindera. All rights reserved.
//

import UIKit

extension UIViewController {
    
    //MARK: - Alert
    func alert(title:String, message:String, cancel:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: cancel, style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: - navigationPush Redirect Page
    func navigationPushRedirect(storyBoardName:String, storyBoardId:String) {
        let secondViewController = UIStoryboard(name: storyBoardName, bundle: nil).instantiateViewController(withIdentifier: storyBoardId)
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    func getDate(dateString:String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.locale = Locale.current
        return dateFormatter.date(from: dateString) // replace Date String
    }
}
