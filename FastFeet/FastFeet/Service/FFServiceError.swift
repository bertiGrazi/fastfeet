//
//  FFServiceError.swift
//  FastFeet
//
//  Created by Grazi  Berti on 19/01/23.
//

import Foundation
import Alamofire

enum FFServiceError: Swift.Error {
    case errorRequest(AFError)
}
