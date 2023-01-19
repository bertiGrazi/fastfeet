//
//  FFService.swift
//  FastFeet
//
//  Created by Grazi  Berti on 19/01/23.
//

import UIKit
import Alamofire

protocol FFServiceDelegate: FFGenericService {
    func getPackages(completion: @escaping completion<FFPackageResults?>)
}

class FFService: FFServiceDelegate {
    func getPackages(completion: @escaping completion<FFPackageResults?>) {
        let url: String = "https://run.mocky.io/v3/2c402c55-125e-4372-9bf4-389474b7d874"
        AF.request(url, method: .get).validate().responseDecodable(of: FFPackageResults.self) { response in
            print(#function)
            debugPrint(#function)
            
            switch response.result {
            case .success(let sucess):
                print("SUCESS -> \(#function)")
                completion(sucess, nil)
                
            case .failure(let error):
                print("ERROR -> \(#function)")
                completion(nil, FFServiceError.errorRequest(error))
            }
            
        }
    }
}
