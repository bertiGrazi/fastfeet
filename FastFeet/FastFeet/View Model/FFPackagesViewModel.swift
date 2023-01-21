//
//  FFPackagesViewModel.swift
//  FastFeet
//
//  Created by Grazi  Berti on 19/01/23.
//

import Foundation

enum TypeFetch {
    case alamofireRequest
}

final class FFPackagesViewModel {
    private let service: FFService = FFService()
    
    private let bussinessModel: FFPackageBusinessModelProtocol = FFPackagesBusinessModel()
    
    public func fetch(_ typeFetch: TypeFetch) {
        switch typeFetch {
        case .alamofireRequest:
            self.service.getPackages { result, failture in
                print(result)
            }
        }
    }
    
    public func fetchMockListPackages() -> [FFPackageDataSource]{
        return bussinessModel.fetchPackages()
    }
}
