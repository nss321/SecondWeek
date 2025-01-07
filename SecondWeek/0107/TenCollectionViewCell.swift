//
//  TenCollectionViewCell.swift
//  SecondWeek
//
//  Created by BAE on 1/7/25.
//

import UIKit

class TenCollectionViewCell: UICollectionViewCell {

    @IBOutlet var posterImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        posterImageView.backgroundColor = .brown
        posterImageView.clipsToBounds = true
        posterImageView.layer.cornerRadius = 12
//        posterImageView
    }

}
