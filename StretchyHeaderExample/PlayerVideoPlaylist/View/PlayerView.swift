//
//  HeaderView.swift
//  StretchyHeaderExample
//
//  Created by Emiliano Barbosa on 08/11/21.
//  Copyright © 2021 John Codeos. All rights reserved.
//

import UIKit

class PlayerView: UIView {
    
    // MARK: - CreateUI
    private let playerView: UIView = {
        var player = UIView()
        player.translatesAutoresizingMaskIntoConstraints = false
        player.backgroundColor = UIColor(red: 0.75, green: 0.75, blue: 0.74, alpha: 1.00)
        return player
    }()
    private let containerStackView: UIStackView = {
        var container = UIStackView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.axis = .vertical
        return container
    }()

    // MARK: - Setup
    private func setup() {
        setupSubview()
        setupConstraints()
    }
    private func setupSubview() {
        containerStackView.addArrangedSubview(playerView)
        self.addSubview(containerStackView)
    }
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            containerStackView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            containerStackView.topAnchor.constraint(equalTo: topAnchor),
            containerStackView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            
            playerView.heightAnchor.constraint(equalToConstant: 140)
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
