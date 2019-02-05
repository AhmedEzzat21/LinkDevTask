//
//  ShadowView.swift
//  Cars
//
//  Created by Khaled on 4/13/17.
//  Copyright © 2017 Khaled. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    override func layoutSubviews() {
        super.layoutSubviews()
        let shadowPath = UIBezierPath(rect: bounds)
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        layer.shadowOpacity = 0.15
        layer.shadowPath = shadowPath.cgPath
    }

}
