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
        
        let cornerRadius = self.frame.height / 2
        
        // Rounded corner
        self.layer.masksToBounds = false
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        
        // Shadow
        /*self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        self.layer.shadowRadius = 20.0
        self.layer.shadowOpacity = 0.6*/
    
    }
}

extension UIButton {
    
    func roundedCornerShadow() {
        self.backgroundColor = UIColor(named: K.colourSchemes.lightTurq)
        
        
    }
    
}
