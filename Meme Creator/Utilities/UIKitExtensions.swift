//
//  UIKitExtensions.swift
//  Meme Creator
//
//  Created by Ben Clarke on 17/08/2020.
//  Copyright © 2020 Ben Clarke. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func slideInFromLeft() {
        let animation = CATransition()
        animation.subtype = CATransitionSubtype.fromRight//kCATransitionFromLeft
        animation.duration = 0.6
        animation.type = CATransitionType.push
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        self.layer.add(animation, forKey: "SlideInFromTop")
    }
    
    func slideInFromBottom(duration: Double) {
        let animation = CATransition()
        animation.subtype = CATransitionSubtype.fromTop
        animation.duration = duration
        animation.type = CATransitionType.push
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        self.layer.add(animation, forKey: "SlideInFromBottom")
        
    }
}


extension UIImageView {
    
    func increaseSizeAnimation(duration: Double) {
        self.transform = CGAffineTransform(scaleX: 0.4, y: 0.4)
        
        UIView.animate(withDuration: duration) {
            self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
    }
    
    func roundedCornersImg() {
        self.layer.masksToBounds = false
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}

extension UIButton {
    
    func fadeButtonin(duration: Double) {
        self.alpha = 0
        
        UIView.animate(withDuration: duration) {
            self.alpha = 1.0
        }
    }
    
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

extension UITableView {
    
    func reloadLeftToRight() {
        self.reloadData()
        let cells = visibleCells
        var delayCounter = 0
        
        for cell in cells {
            cell.frame.origin.x = -cell.frame.width
            
            UIView.animate(withDuration: 0.7, delay: 0.07 * Double(delayCounter), usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
                cell.frame.origin.x = 0
            }, completion: nil)
            
            delayCounter += 1
        }
    }
    
}



