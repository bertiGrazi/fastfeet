//
//  FFPackageStatus.swift
//  FastFeet
//
//  Created by Grazi  Berti on 19/01/23.
//

import Foundation

enum FFPackageStatus: String, Codable {
    case waiting = "Aguardando"
    case withdrawal = "Retirado"
    case delivery = "Entregue"
}
