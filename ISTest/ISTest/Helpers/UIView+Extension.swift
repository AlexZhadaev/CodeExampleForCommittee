//
//  UIView+Extension.swift
//  ISTest
//
//  Created by Aleksei Zhadaev on 26.02.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ view: UIView...) {
        view.forEach(addSubview(_:))
    }
}
