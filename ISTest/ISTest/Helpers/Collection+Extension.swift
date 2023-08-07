//
//  Collection+Extension.swift
//  ISTest
//
//  Created by Aleksei Zhadaev on 26.02.2023.
//

import Foundation

extension Collection {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
