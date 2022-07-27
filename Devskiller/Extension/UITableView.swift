//
//  UITableView.swift
//  GPSVTS
//
//  Created by VAMOSYS DRS on 25/03/21.
//

import UIKit

extension UITableView {
    
    func register<T: UITableViewCell>(_: T.Type) where T: NibLoadableView {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell >(for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier:  T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier:  \(T.reuseIdentifier)")
        }
        return cell
    }
}





