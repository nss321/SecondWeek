//
//  UserTableViewController.swift
//  SecondWeek
//
//  Created by BAE on 1/3/25.
//

import UIKit
import Kingfisher

class UserTableViewController: UITableViewController {

    var friends = FriendsInfo().list
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @objc func likeButtonTapped(_ sender: UIButton) {
        friends[sender.tag].like.toggle()
        print(#function, sender.tag)
        print(friends[sender.tag].like)
        tableView.reloadData()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as! UserTableViewCell
        let row = friends[indexPath.row]
        
        let image = row.profile_image
        
        if let image {
            let url = URL(string: image)
            cell.profileImageView.kf.setImage(with: url)
        } else {
            cell.profileImageView.image = UIImage(systemName: "person")
        }
        
        let like = row.like ? "star" : "star.fill"
        cell.likeButton.setImage(UIImage(systemName: like), for: .normal)
        
        cell.likeButton.tag = indexPath.row
        cell.likeButton.addTarget(self, action: #selector(likeButtonTapped), for: .touchUpInside)
        
//        cell.likeButton.setImage(row.like ? UIImage(systemName: "star") : UIImage(systemName: "star.fill"), for: .normal)
        
        cell.nameLabel.text = row.name
        cell.messageLabel.text = row.message ?? ""
        
        cell.nameLabel.font = .boldSystemFont(ofSize: 15)
        cell.messageLabel.font = .systemFont(ofSize: 12)
        cell.profileImageView.backgroundColor = .cyan
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    

}
