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
    
    private var data: [FFPackageResults] = []
    
    public func fetch(_ typeFetch: TypeFetch) {
        switch typeFetch {
        case .alamofireRequest:
            self.service.getPackages { result, failture in
                print(result)
            }
        }
    }
    
    public var numberOfSections: Int {
        return self.data.count
    }
    
    public func packageIdCell(indexPath: IndexPath) -> String {
        return "\(self.data[indexPath.row].results[indexPath.row].id)" ?? ""
    }
}
