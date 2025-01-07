//
//  TenCollectionViewController.swift
//  SecondWeek
//
//  Created by BAE on 1/7/25.
//

import UIKit

class TenCollectionViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        let xib = UINib(nibName: "TenCollectionViewCell", bundle: nil)
        collectionView.register(xib, forCellWithReuseIdentifier: "TenCollectionViewCell")
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 100, height: 100)
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 100, left: 50, bottom: 100, right: 50)
        collectionView.collectionViewLayout = layout
    }
}

extension TenCollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TenCollectionViewCell", for: indexPath) as! TenCollectionViewCell
        return cell
    }
    
    
}
