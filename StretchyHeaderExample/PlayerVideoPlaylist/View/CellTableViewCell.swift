//
//  HeaderTableViewHeader.swift
//  StretchyHeaderExample
//
//  Created by Emiliano Barbosa on 08/11/21.
//  Copyright © 2021 John Codeos. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    // MARK: - Create UI
    private let cellView: CellView = {
        var cell = CellView()
        cell.translatesAutoresizingMaskIntoConstraints = false
        return cell
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
        containerStackView.addArrangedSubview(cellView)
        contentView.addSubview(containerStackView)
    }
    private func setupConstants() {
        NSLayoutConstraint.activate([
            containerStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerStackView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor),
            containerStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            cellView.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
