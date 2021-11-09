//
//  HeaderTableViewHeader.swift
//  StretchyHeaderExample
//
//  Created by Emiliano Barbosa on 08/11/21.
//  Copyright © 2021 John Codeos. All rights reserved.
//

import UIKit

class SectionTableViewHeader: UITableViewHeaderFooterView {

    // MARK: - Create UI
    private let section: SectionView = {
        var section = SectionView()
        section.translatesAutoresizingMaskIntoConstraints = false
        return section
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
        containerStackView.addArrangedSubview(section)
        contentView.addSubview(containerStackView)
    }
    private func setupConstants() {
        NSLayoutConstraint.activate([
            containerStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerStackView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor),
            containerStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            section.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    // MARK: - Init
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
