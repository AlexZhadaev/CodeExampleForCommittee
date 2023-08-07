//
//  GoButton.swift
//  ISTest
//
//  Created by Aleksei Zhadaev on 28.02.2023.
//

import UIKit

final class GoButton: UIButton {

    private enum Constants {
        static let backgroundColor = UIColor.Palette.customYellow
        static let shadowColor = UIColor.black.cgColor
        static let titleColor = UIColor.Palette.customDarkGray
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureAppearance()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configureAppearance() {
        backgroundColor = Constants.backgroundColor
        layer.cornerRadius = 10
        layer.shadowColor = Constants.shadowColor
        layer.shadowRadius = 20
        layer.shadowOpacity = 0.5

        titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        setTitle("=ПРОБУЕМ=", for: .normal)
        setTitleColor(Constants.titleColor, for: .normal)
    }
}
