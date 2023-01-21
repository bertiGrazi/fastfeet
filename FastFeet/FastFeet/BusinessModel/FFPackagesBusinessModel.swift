//
//  FFPackagesBusinessModel.swift
//  FastFeet
//
//  Created by Grazi  Berti on 21/01/23.
//

import Foundation

class FFPackagesBusinessModel: FFPackageBusinessModelProtocol {
    func fetchPackages() -> [FFPackageDataSource] {
        return [
            FFPackageDataSource(id: 01, name: "Jeronimo Luis Berti", status: .delivery, address: "Cicera Maria de Lima Berti", addressNumber: 103, neighborhood: "Jardim Mel", state: "SP", cep: "00000-000", postedate: "07/07/2020", withdrawalDate: "", deliveryDate: ""),
            FFPackageDataSource(id: 01, name: "Jeronimo Luis Berti", status: .delivery, address: "Cicera Maria de Lima Berti", addressNumber: 103, neighborhood: "Jardim Mel", state: "SP", cep: "00000-000", postedate: "07/07/2020", withdrawalDate: "", deliveryDate: ""),
            FFPackageDataSource(id: 01, name: "Jeronimo Luis Berti", status: .delivery, address: "Cicera Maria de Lima Berti", addressNumber: 103, neighborhood: "Jardim Mel", state: "SP", cep: "00000-000", postedate: "07/07/2020", withdrawalDate: "", deliveryDate: ""),
            FFPackageDataSource(id: 01, name: "Jeronimo Luis Berti", status: .delivery, address: "Cicera Maria de Lima Berti", addressNumber: 103, neighborhood: "Jardim Mel", state: "SP", cep: "00000-000", postedate: "07/07/2020", withdrawalDate: "", deliveryDate: ""),
            FFPackageDataSource(id: 01, name: "Jeronimo Luis Berti", status: .delivery, address: "Cicera Maria de Lima Berti", addressNumber: 103, neighborhood: "Jardim Mel", state: "SP", cep: "00000-000", postedate: "07/07/2020", withdrawalDate: "", deliveryDate: "")
        ]
    }
}
