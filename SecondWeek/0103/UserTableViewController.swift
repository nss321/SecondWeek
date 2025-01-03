//
//  UserTableViewController.swift
//  SecondWeek
//
//  Created by BAE on 1/3/25.
//

import UIKit

struct Friends {
    let name: String
    let message: String
    let profile_image: String
}

class UserTableViewController: UITableViewController {

    let friends = [
        Friends(name: "고래밥", message: "고래밥 냠냐미", profile_image: "star"),
        Friends(name: "칙촉", message: "촉 ! ! !", profile_image: "person"),
        Friends(name: "카스타드", message: "카최몇?", profile_image: "star.fill")
    ]
//    
//    let name = ["고래밥", "칙촉", "카스타드"]
//    let message = ["고래밥 냠냠", "칙!!!촉!!!", "카최몇?"]
//    let profile = ["star", "person", "star.fill"]
//    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as! UserTableViewCell
        
        cell.profileImageView.backgroundColor = .cyan
        cell.profileImageView.image = UIImage(systemName: friends[indexPath.row].profile_image)
        cell.nameLabel.text = friends[indexPath.row].name
        cell.messageLabel.text = friends[indexPath.row].message
        
        cell.nameLabel.font = .boldSystemFont(ofSize: 15)
        cell.messageLabel.font = .systemFont(ofSize: 12)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }

}
