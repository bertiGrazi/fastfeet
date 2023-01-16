//
//  Utilities.swift
//  FastFeet
//
//  Created by Grazi  Berti on 16/01/23.
//

import Foundation
import UIKit

class Utilities {
    func attibutedLabelHeaderLogin(firtsLabel: String, secondLabel: String) -> UILabel {
        let label = UILabel()
        let attributedTitle = NSMutableAttributedString(string: firtsLabel, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 48), NSMutableAttributedString.Key.foregroundColor: UIColor.yellowFastFeetColor])
        attributedTitle.append(NSMutableAttributedString(string: secondLabel, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 48), NSMutableAttributedString.Key.foregroundColor: UIColor.whiteFastFeetColor]))
        label.attributedText = attributedTitle
        return label
    }
    
    func textField(withPlaceholder placeholder: String) -> UITextField {
        let textField = UITextField()
        textField.backgroundColor = UIColor.whiteFastFeetColor
        textField.layer.cornerRadius = 4
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .baseTextFastFeetColor
        textField.attributedPlaceholder = NSAttributedString(string: placeholder,
                                                             attributes: [NSMutableAttributedString.Key.foregroundColor: UIColor.baseTextFastFeetColor])
        return textField
    }
}
