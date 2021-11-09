//
//  VideoTableTableViewController.swift
//  StretchyHeaderExample
//
//  Created by Emiliano Barbosa on 08/11/21.
//  Copyright © 2021 John Codeos. All rights reserved.
//

import UIKit

class VideoTableTableViewController: UITableViewController {
    
    // MARK: - Constants
    private let headerId = "headerId"
    private let cellId = "cellId"
    
    // MARK: - Variables
    private var hierarchicalData: NSArray = [
        "US", "United Kingdom", "Russia",
        "Turkey", "Ukraine", "Germany",
        "India", "Romania", "Brazil"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setupTableHeader() {
        
        let header = HeaderView(frame: CGRect(x: 0,
                                              y: 0,
                                              width: tableView.frame.width,
                                              height: 65))
        tableView.tableHeaderView = header
    }
    
    // MARK: - Setup
    private func setup() {
        // HeaderView
        setupTableHeader()
        
        // Register
        tableView.register(SectionTableViewHeader.self, forHeaderFooterViewReuseIdentifier: headerId)
        tableView.register(CellTableViewCell.self, forCellReuseIdentifier: cellId)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return  1
    }
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return hierarchicalData.count
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CellTableViewCell
        return cell
    }
    
    // MARK: - Header
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: headerId)
        return header
    }
}
