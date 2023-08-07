//
//  GraphicData.swift
//  ISTest
//
//  Created by Aleksei Zhadaev on 27.02.2023.
//

import Foundation

// MARK: - GraphicData
struct GraphicData: Codable {
    let points: [Point]
}

// MARK: - Point
struct Point: Codable, Hashable {
    let x: Double
    let y: Double
}
