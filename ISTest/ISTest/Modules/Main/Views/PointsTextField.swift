//
//  PointsTextField.swift
//  ISTest
//
//  Created by Aleksei Zhadaev on 28.02.2023.
//

import UIKit

final class PointsTextField: UITextField {

    private enum Constants {
        static let borderColor = UIColor.Palette.customYellow.cgColor
        static let shadowColor = UIColor.black.cgColor
        static let tintColor = UIColor.Palette.customYellow
        static let textColor = UIColor.Palette.customDarkGray
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureAppearance()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configureAppearance() {
        placeholder = "Сколько точек?"
        keyboardType = .numberPad
        backgroundColor = .white
        leftView = UIView(frame: CGRectMake(0, 0, 10, 20))
        leftViewMode = .always

        layer.cornerRadius = 10
        layer.borderColor = Constants.borderColor
        layer.borderWidth = 2
        layer.shadowColor = Constants.shadowColor
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.2

        tintColor = Constants.tintColor
        textColor = Constants.textColor
        font = UIFont.systemFont(ofSize: 18, weight: .medium)
    }
}
