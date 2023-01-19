//
//  FFService.swift
//  FastFeet
//
//  Created by Grazi  Berti on 19/01/23.
//

import UIKit

protocol FFServiceDelegate: FFGenericService {
    func getPackages(completion: @escaping completion<FFPackageResults?>)
}

class FFService {
    
}
