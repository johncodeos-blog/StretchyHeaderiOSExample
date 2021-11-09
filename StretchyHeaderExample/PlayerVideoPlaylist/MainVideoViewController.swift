//
//  MainViewController.swift
//  StretchyHeaderExample
//
//  Created by Emiliano Barbosa on 08/11/21.
//  Copyright © 2021 John Codeos. All rights reserved.
//

import UIKit

class MainVideoViewController: UIViewController {
    
    // MARK: - View Controller
    private var playerViewController: UIViewController = PlayerViewController()
    private var videoTableViewController: UITableViewController = VideoTableTableViewController()
    
    // MARK: - Create UI
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
        containerStackView.addArrangedSubview(playerViewController.view)
        containerStackView.addArrangedSubview(videoTableViewController.view)
        self.view.addSubview(containerStackView)
    }
    private func setupConstants() {
        NSLayoutConstraint.activate([
            playerViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            playerViewController.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            playerViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            playerViewController.view.heightAnchor.constraint(equalToConstant: 140),
            
            videoTableViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            videoTableViewController.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 140),
            videoTableViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            videoTableViewController.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

}
