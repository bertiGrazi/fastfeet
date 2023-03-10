//
//  FFPackageResults.swift
//  FastFeet
//
//  Created by Grazi  Berti on 19/01/23.
//

import Foundation

struct FFPackageResults: Codable {
    let results: [FFPackageDetails]
}

struct FFPackageDetails: Codable {
    let id: Int
    let name: String
    let status: FFPackageStatus
    let address: String
    let addressNumber: Int
    let neighborhood: String
    let state: String
    let cep: String
    let postedate: String
    let withdrawalDate: String
    let deliveryDate: String
}
