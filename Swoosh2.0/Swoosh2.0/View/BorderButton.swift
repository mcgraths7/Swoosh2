//
//  BorderButton.swift
//  Swoosh2.0
//
//  Created by Steven McGrath on 9/4/18.
//  Copyright © 2018 Steven McGrath. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
