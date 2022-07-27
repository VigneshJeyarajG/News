//
//  ThemeView.swift
//  Devskiller
//
//  Created by VAMOSYS DRS on 20/07/22.
//  Copyright © 2022 Mindera. All rights reserved.
//

import UIKit

import UIKit

final class ThemeView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        layer.backgroundColor = UIColor._themeColor.cgColor
    }
}
