//
//  FFForgotPasswordStrings.swift
//  FastFeet
//
//  Created by Grazi  Berti on 18/01/23.
//

import Foundation

enum FFForgotPasswordStrings: String {
    case forgotPasswordHeaderfirtsTitle = "Esqueceu,\n"
    case forgotPasswordHeadersecondTitle = "sua senha?"
case forgotPasswordHeaderdescriptionText = "Por motivos de segurança,\npara recurá-la, vá até a central\nda distribuidora Fastfeet."
    case forgotPasswordAddressTitle = "ENDEREÇO"
    case forgotPasswordAddress = "Rua Guilherme Gemballa, 260\nJardim América, SC\n89 168-000"
    
    func localized() -> String { rawValue.localized(.forgotPasswordPresentation) }
}
