//
//  HeaderView.swift
//  StretchyHeaderExample
//
//  Created by Emiliano Barbosa on 08/11/21.
//  Copyright © 2021 John Codeos. All rights reserved.
//

import UIKit

class SectionView: UIView {
    
    // MARK: - CreateUI
    private let iconImage: UIView = {
        var icon = UIView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.backgroundColor = UIColor(red: 0.25, green: 0.21, blue: 0.18, alpha: 1.00)
        return icon
    }()
    private let titleLabel: UIView = {
        var title = UIView()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.backgroundColor = UIColor(red: 0.25, green: 0.21, blue: 0.18, alpha: 1.00)
        return title
    }()
    private let containerStackView: UIStackView = {
        var container = UIStackView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.axis = .horizontal
        container.spacing = 5
        return container
    }()

    // MARK: - Setup
    private func setup() {
        setupSubview()
        setupConstraints()
    }
    private func setupSubview() {
        containerStackView.addArrangedSubview(iconImage)
        containerStackView.addArrangedSubview(titleLabel)
        self.addSubview(containerStackView)
    }
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            containerStackView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            containerStackView.topAnchor.constraint(equalTo: topAnchor),
            containerStackView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            
            iconImage.heightAnchor.constraint(equalToConstant: 30),
            iconImage.widthAnchor.constraint(equalToConstant: 30),
            titleLabel.heightAnchor.constraint(equalToConstant: 30),
            
        ])
    }
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
