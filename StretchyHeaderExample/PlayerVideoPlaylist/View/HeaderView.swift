//
//  HeaderView.swift
//  StretchyHeaderExample
//
//  Created by Emiliano Barbosa on 08/11/21.
//  Copyright © 2021 John Codeos. All rights reserved.
//

import UIKit

class HeaderView: UIView {
    
    // MARK: - CreateUI
    private let titleLabel: UIView = {
        var title = UIView()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.backgroundColor = UIColor(red: 0.05, green: 0.00, blue: 0.00, alpha: 1.00)
        return title
    }()
    private let summaryLabel: UIView = {
        var summary = UIView()
        summary.translatesAutoresizingMaskIntoConstraints = false
        summary.backgroundColor = UIColor(red: 0.05, green: 0.00, blue: 0.00, alpha: 1.00)
        return summary
    }()
    private let containerStackView: UIStackView = {
        var container = UIStackView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.axis = .vertical
        container.spacing = 5
        return container
    }()

    // MARK: - Setup
    private func setup() {
        setupSubview()
        setupConstraints()
    }
    private func setupSubview() {
        containerStackView.addArrangedSubview(titleLabel)
        containerStackView.addArrangedSubview(summaryLabel)
        self.addSubview(containerStackView)
    }
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            containerStackView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            containerStackView.topAnchor.constraint(equalTo: topAnchor),
            containerStackView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            
            titleLabel.heightAnchor.constraint(equalToConstant: 30),
            summaryLabel.heightAnchor.constraint(equalToConstant: 30)
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
