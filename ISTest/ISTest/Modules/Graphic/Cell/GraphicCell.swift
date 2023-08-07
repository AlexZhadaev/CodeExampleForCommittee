//
//  GraphicCell.swift
//  ISTest
//
//  Created by Aleksei Zhadaev on 28.02.2023.
//

import UIKit

final class GraphicCell: UITableViewCell {

    private let customSelectedColor: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.Palette.customYellow
        return view
    }()

    // MARK: - UITableViewCell

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureAppearance()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func set(model: Point) {
        var cellConfig = defaultContentConfiguration()
        cellConfig.text = "x: \(model.x) y: \(model.y)"
        cellConfig.textProperties.alignment = .center
        cellConfig.textProperties.color = UIColor.Palette.customDarkGray
        cellConfig.textProperties.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        contentConfiguration = cellConfig
    }

    private func configureAppearance() {
        backgroundColor = .systemCyan
        selectedBackgroundView = customSelectedColor
    }
}
