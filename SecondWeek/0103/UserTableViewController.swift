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
//        print(#function)
//        let nib = UINib(nibName: "NoProfileTableViewCell", bundle: nil)
//        tableView.register(nib, forCellReuseIdentifier: "NoProfileTableViewCell")
        navigationItem.title = "Yellow"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(rightBarButtonItemTapped))
    }

    @objc func likeButtonTapped(_ sender: UIButton) {
        friends[sender.tag].like.toggle()
        print(#function, sender.tag)
        print(friends[sender.tag].like)
//        tableView.reloadData()
        tableView.reloadRows(at: [IndexPath(row: sender.tag, section: 0)], with: .automatic)
        
    }
    
    @objc func rightBarButtonItemTapped() {
        print(#function)
        
        // MARK: 본인의 스토리보드 내의 뷰컨트롤러로 이동한다면 굳이 별도로 인스턴스를 만들 필요 없음.
        // MARK: self도 생략 가능.(Yellow, Indigo 모두 User Storyboard 내에 있기 떄문에)
        /// 1. 스토리보드 특정 Practice
//        let sb = UIStoryboard(name: "User", bundle: nil)
        /// 2. 전환할 뷰컨트롤러 가져오기
        let vc = /*self.*/storyboard?.instantiateViewController(withIdentifier: "IndigoViewController") as! IndigoViewController
        /// 3. 화면을 전환할 방법 선택하기 - 우측에서 등장 / show / navi / push
        /*self.*/navigationController?.pushViewController(vc, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.identifier, for: indexPath) as! UserTableViewCell
//        let cell = tableView.dequeueReusableCell(withIdentifier: "NoProfileTableViewCell", for: indexPath) as! NoProfileTableViewCell
        let row = friends[indexPath.row]
        
        cell.config(row: row)
        cell.likeButton.tag = indexPath.row
        cell.likeButton.addTarget(self, action: #selector(likeButtonTapped), for: .touchUpInside)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        100
        UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function)
        
        /// 1. 스토리보드 특정 Practice
        let sb = UIStoryboard(name: "User", bundle: nil)
        /// 2. 전환할 뷰컨트롤러 가져오기
        /// modalPresentationStyle에 따라 사용할 수 없는 TransitionStyle이 있음.
        /// e.g. 책장 넘기는 효과는 fullscreen에서만 가능
        
        /// (옵션1)
        let vc = sb.instantiateViewController(withIdentifier: "YellowViewController") as! YellowViewController
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        // 값 전달할 때 아울렛은 사용할 수 없음.
//        vc.nameLabel.text = "e"
        
        /// 2. Pass Data
        vc.contens = friends[indexPath.row].name
        
        /// (옵션2)
        /// present이지만 navigation을 사용하고 싶다면, 다시 Embed하여 사용
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        nav.modalTransitionStyle = .crossDissolve
        
        /// 3. 화면을 전환할 방법 선택하기 - 아래에서 위로 / modal / present
        present(nav, animated: true)
//        self.navigationController?.pushViewController(vc, animated: true)
        
//        tableView.reloadRows(at: [indexPath], with: .fade)
    }
    

}

