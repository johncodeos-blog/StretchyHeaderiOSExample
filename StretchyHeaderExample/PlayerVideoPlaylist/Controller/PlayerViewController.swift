//
//  MainViewController.swift
//  StretchyHeaderExample
//
//  Created by Emiliano Barbosa on 08/11/21.
//  Copyright © 2021 John Codeos. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {
    
    // MARK: - Create UI
    private let playerView: PlayerView = {
        var player = PlayerView()
        player.translatesAutoresizingMaskIntoConstraints = false
        return player
    }()
    private let containerStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Setup
    private func setup() {
        setupSubview()
        setupConstants()
    }
    private func setupSubview() {
        containerStackView.addArrangedSubview(playerView)
        self.view.addSubview(containerStackView)
    }
    private func setupConstants() {
        NSLayoutConstraint.activate([
            containerStackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            containerStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            containerStackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            playerView.heightAnchor.constraint(equalToConstant: 140)
        ])
    }
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

}
