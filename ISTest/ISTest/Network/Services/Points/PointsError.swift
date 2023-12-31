//
//  PointsError.swift
//  ISTest
//
//  Created by Aleksei Zhadaev on 27.02.2023.
//

import Foundation

enum PointsError: LocalizedError {
    case badRequest
    case internalServerError
    case unknown(String)

    var errorDescription: String? {
        switch self {
        case .badRequest:
            return "Не верное кол-во точек"
        case .internalServerError:
            return "Очень внезапная ошибка"
        case .unknown(let string):
            return string
        }
    }
}
