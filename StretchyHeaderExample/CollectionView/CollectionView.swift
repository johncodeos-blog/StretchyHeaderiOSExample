//
//  CollectionView.swift
//  StretchyHeaderExample
//
//  Created by John Codeos on 5/2/20.
//  Copyright © 2020 John Codeos. All rights reserved.
//

import UIKit

class CollectionView: UIViewController {
    @IBOutlet var collectionView: UICollectionView!
    
    var itemsArray = [UIColor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set CollectionView Delegate & DataSource
        collectionView.delegate = self
        collectionView.dataSource = self
        
        // Set CollectionView Flow Layout for Header and Items
        let flowLayout = CollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        flowLayout.numberOfItemsPerRow = 3
        flowLayout.itemSize = CGSize(width: 100, height: 100)
        flowLayout.minimumLineSpacing = 1.0
        flowLayout.minimumInteritemSpacing = 1.0
        collectionView.collectionViewLayout = flowLayout
        
        // Load Demo Data to CollectionView Cells
        loadData()
        
        // Register Header
        collectionView.register(StretchyCollectionHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerView")
    }
    
    func loadData() {
        for _ in 0...53 {
            // Add random color in the array
            itemsArray.append(getRandomColor())
        }
        self.collectionView.reloadData()
    }
    
    func getRandomColor() -> UIColor {
        // Generate between 0 to 1
        let red: CGFloat = CGFloat(drand48())
        let green: CGFloat = CGFloat(drand48())
        let blue: CGFloat = CGFloat(drand48())
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Make sure the top constraint of the CollectionView is equal to Superview and not Safe Area
        
        // Hide the navigation bar completely
        //self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        
        // Make the Navigation Bar background transparent
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.tintColor = .white

        // Remove 'Back' text and Title from Navigation Bar
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.title = ""
    }
}

extension CollectionView: UICollectionViewDataSource {
    // Set Header in CollectionView
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerView", for: indexPath) as? StretchyCollectionHeaderView {
            // Add Image to the Header
            headerView.imageView.image = UIImage(named: "headerbg")
            
            return headerView
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath)
        cell.backgroundColor = itemsArray[indexPath.row]
        return cell
    }
}

extension CollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: self.collectionView.frame.size.width, height: 250)
    }
}
