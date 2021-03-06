//
//  Constants.swift
//  Meme Creator
//
//  Created by Ben Clarke on 17/08/2020.
//  Copyright © 2020 Ben Clarke. All rights reserved.
//

import Foundation

struct K {
    
    struct colourSchemes {
        
        static let lightPurple = "purpleLight"
        static let darkPurple = "purpleDark"
        static let lightTurq = "turqLight"
        static let lightGrey = "greyLight"
        
    }
    
    struct Segues {
        static let homeVC = "goToHomeVC"
        static let createVC = "goToCreateVC"
        static let libaryVC = "goToLibaryVC"
    }
    
    struct StoryBoardIDs {
        static let onboardingVC = "onboardingVC"
        static let homeVC = "homeVC"
    }
    
    struct UserDefaultskey {
        static let onboardingScreen = "hasLaunched"
    }
    
    struct FontNames {
        static let fonts = ["Arial", "Chalkduster", "Futura Bold", "Georgia Italic", "Helvetica", "Symbol", "Times New Roman"]
        
    }
}
