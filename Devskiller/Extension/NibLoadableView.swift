//
//  NibLoadableView.swift
//  Devskiller
//
//  Created by VAMOSYS DRS on 20/07/22.
//  Copyright © 2022 Mindera. All rights reserved.
//

import Foundation
import UIKit

protocol NibLoadableView: class { }

extension NibLoadableView where Self: UIView {
    
    static var nibName: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        guard let view = Bundle.main.loadNibNamed(Self.nibName, owner: self, options: nil)?.first as? Self else {	
            fatalError("Could not load nib with identifier: \(Self.nibName)")
        }
        return view
    }
    
    func initNib() {
            let bundle = Bundle(for: Self.self)
            let nib = UINib(nibName: String(describing: Self.self), bundle: bundle)
            let views = nib.instantiate(withOwner: self, options: nil)
            if let view = views.last as? UIView {
            view.frame = bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(view)
        }
    }
}

