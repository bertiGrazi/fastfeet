//
//  FFLoginStrings.swift
//  FastFeet
//
//  Created by Grazi  Berti on 18/01/23.
//

import Foundation

enum FFLoginStrings: String {
    case loginHeaderfirtsTitle = "Entregador,\n"
    case loginHeadersecondTitle = "você é nosso\nmaior valor"
    case loginHeaderdescriptionText = "Faça seu login para\ncomeçar suas entregas"
    case loginPlaceholderCPF = " CPF"
    case loginPlaceholderPassword = " Senha"
    case loginforgotPasswordTextButton = "Esqueci minha senha"
    case loginSignInTextButton = "Entrar"
    
    func localized() -> String { rawValue.localized() }
}
