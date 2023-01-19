//
//  FFGenericService.swift
//  FastFeet
//
//  Created by Grazi  Berti on 19/01/23.
//

import Foundation

protocol FFGenericService: AnyObject {
    typealias completion <T> = (_ result: T, _ failture: FFServiceError?) -> Void
}
