//
//  PointsEndpoint.swift
//  ISTest
//
//  Created by Aleksei Zhadaev on 27.02.2023.
//

import Foundation

enum PointsEndpoint {
    case points(count: Int)
}

extension PointsEndpoint: Endpoint {
    var path: String {
        switch self {
        case .points(_):
            return "/api/test/points"
        }
    }
    
    var method: HTTPMethod { .get }
    
    var queryItems: [String : String] {
        switch self {
        case .points(let count):
            return ["count": "\(count)"]
        }
    }
}
