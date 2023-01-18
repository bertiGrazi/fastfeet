//
//  FFMainTabStrings.swift
//  FastFeet
//
//  Created by Grazi  Berti on 18/01/23.
//

import Foundation

enum FFMainTabStrings: String {
    case pendingVCTtile = "Pendentes"
    case deliveredVCTtile = "Feitas"
    
    func localized() -> String { rawValue.localized() }
}
