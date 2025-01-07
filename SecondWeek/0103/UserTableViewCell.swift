//
//  UserTableViewCell.swift
//  SecondWeek
//
//  Created by BAE on 1/3/25.
//

import UIKit
import Kingfisher

class UserTableViewCell: UITableViewCell {

    /// Type Property
    static let identifier = "UserTableViewCell"
    
    ///
    @IBOutlet private var profileImageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var messageLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        profileImageView.backgroundColor = .cyan
        nameLabel.font = .boldSystemFont(ofSize: 15)
        nameLabel.numberOfLines = 0
        messageLabel.font = .boldSystemFont(ofSize: 15)
        messageLabel.numberOfLines = 0
        
        print(self, #function)
    }
    
    /// static function을 상속 받으면 이게 나옴. 이건 타입 메서드임.
//    override class func awakeFromNib() {
//        <#code#>
//    }
    
    
    /// 재사용할 Cell의 정보를 미리 초기화
    override func prepareForReuse() {
        super.prepareForReuse()
        print(#function)
//        profileImageView.image = UIImage(systemName: "star")
    }
    
    func config(row: Friends) {
        print(self, #function)
        nameLabel.text = row.nameDescription
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
