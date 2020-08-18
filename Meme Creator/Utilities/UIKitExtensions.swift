//
//  UIKitExtensions.swift
//  Meme Creator
//
//  Created by Ben Clarke on 17/08/2020.
//  Copyright © 2020 Ben Clarke. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    func roundedCornersImg() {
        self.layer.masksToBounds = false
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}

extension UIButton {
    
    func roundedCornerShadow(color: String) {
        self.backgroundColor = UIColor(named: color)
        self.layer.cornerRadius = 10
        self.setTitleColor(UIColor.white, for: .normal)
        
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        self.layer.shadowRadius = 10.0
        self.layer.shadowOpacity = 0.6
    }
    
}


extension UIView {
    
    func slideInFromLeft() {
        let animation = CATransition()
        animation.subtype = CATransitionSubtype.fromRight//kCATransitionFromLeft
        animation.duration = 0.6
        animation.type = CATransitionType.push
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        self.layer.add(animation, forKey: "SwitchToView1")
        
    }
}
