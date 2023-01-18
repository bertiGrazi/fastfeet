//
//  Extensions.swift
//  FastFeet
//
//  Created by Grazi  Berti on 07/01/23.
//

import Foundation
import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    static let backgroundColor = UIColor.rgb(red: 76, green: 51, blue: 204)
    static let backgroundLightColor = UIColor.rgb(red: 247, green: 245, blue: 250)
    
    static let yellowFastFeetColor = UIColor.rgb(red: 255, green: 192, blue: 66)
    static let lowYellowFastFeetColor = UIColor.rgb(red: 255, green: 241, blue: 214)
    static let whiteFastFeetColor = UIColor.rgb(red: 255, green: 255, blue: 255)
    static let greenFastFeetColor = UIColor.rgb(red: 0, green: 218, blue: 109)
    static let redFastFeetColor = UIColor.rgb(red: 230, green: 46, blue: 46)

    static let titleTextFastFeetColor = UIColor.rgb(red: 76, green: 71, blue: 102)
    static let subtitleTextFastFeetColor = UIColor.rgb(red: 213, green: 204, blue: 255)
    static let baseTextFastFeetColor = UIColor.rgb(red: 111, green: 108, blue: 128)
    static let complementTextFastFeetColor = UIColor.rgb(red: 190, green: 188, blue: 204)
}

extension String {
    func localized(_ feature: FeatureKind = .loginPresentation) -> String{
        
        var fileName = String()
        
        switch feature {
        case .loginPresentation:
            fileName = "FFLoginStrings"
        case .forgotPasswordPresentation:
            fileName = "FFForgotPasswordStrings"
        }
        
        return NSLocalizedString(self, tableName: fileName, bundle: Bundle.main, value: String(), comment: String())
    }
}
