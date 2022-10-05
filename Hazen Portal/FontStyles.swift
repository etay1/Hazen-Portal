//
//  FontStyles.swift
//  Hazen Portal
//
//  Created by Corey Bright on 9/25/22.
//

import Foundation
import SwiftUI

// Text style and size for all words on login page
extension Font {
    
    // LOGIN PAGE
    static var loginDetails: Font {
        return Font.custom("Outfit-Regular", size: 24)
    }
    
    static var loginPrompt: Font {
        return Font.custom("Outfit-Medium", size: 16)
    }

    static var loginButton: Font {
        return Font.custom("Outfit-Bold", size: 24)
    }
    
    static var myHazen: Font {
        return Font.custom("Outfit-Medium", size: 24)
    }
    
    static var socialMedia: Font {
        return Font.custom("Outfit-Medium", size: 12)
    }
    
    
    // HOME SCREEN
    static var headerText: Font {
        return Font.custom("Outfit-Medium", size: 14)
    }
    
    static var iconText: Font {
        return Font.custom("Outfit-Regular", size: 12)
    }
   
    
}
