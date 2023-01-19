//
//  FFServiceError.swift
//  FastFeet
//
//  Created by Grazi  Berti on 19/01/23.
//

import Foundation

enum FFServiceError: Swift.Error {
    case fileNotFound(name: String)
    case fileDecodingFailed(name: String, Swift.Error)
}
