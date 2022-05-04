//
//  File.swift
//  
//
//  Created by Rafael Riki Ogawa Osiro on 10/04/22.
//

import Foundation
import UIKit

public struct FontModel {
    
    public static let sfProDisplayMedium: String = {
        let pathFont = "SF-Pro-Display-Medium"
        let fontURL = Bundle.main.url(forResource: pathFont, withExtension: "otf")
        guard let fontURL = fontURL else { fatalError("Deu ruim na url") }
        CTFontManagerRegisterFontsForURL(fontURL as CFURL, CTFontManagerScope.process, nil)
        return "SFProDisplay-Medium"
    }()
    
    public static let sfProDisplayRegular: String = {
        let pathFont = "SF-Pro-Display-Regular"
        let fontURL = Bundle.main.url(forResource: pathFont, withExtension: "otf")
        guard let fontURL = fontURL else { fatalError("Deu ruim na url") }
        CTFontManagerRegisterFontsForURL(fontURL as CFURL, CTFontManagerScope.process, nil)
        return "SFProDisplay-Regular"
    }()
}
