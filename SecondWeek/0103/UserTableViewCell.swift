//
//  UserTableViewCell.swift
//  SecondWeek
//
//  Created by BAE on 1/3/25.
//

import UIKit
import Kingfisher

class UserTableViewCell: UITableViewCell {

    @IBOutlet private var profileImageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var messageLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        profileImageView.backgroundColor = .cyan
        nameLabel.font = .boldSystemFont(ofSize: 15)
        messageLabel.font = .boldSystemFont(ofSize: 15)
        
        print(#function)
    }
    
    func config(row: Friends) {
        print(#function)
        nameLabel.text = row.name
        messageLabel.text = row.message ?? ""
        
        let image = row.profile_image
        if let image {
            let url = URL(string: image)
            profileImageView.kf.setImage(with: url)
        } else {
            profileImageView.image = UIImage(systemName: "person")
        }
        
        let like = row.like ? "star" : "star.fill"
        likeButton.setImage(UIImage(systemName: like), for: .normal)
    }
}
