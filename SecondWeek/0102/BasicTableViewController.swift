//
//  BasicTableViewController.swift
//  SecondWeek
//
//  Created by BAE on 1/2/25.
//

import UIKit

class BasicTableViewController: UITableViewController {
    
    var list = [
        "프로젝트", "쇼핑", "메인 업무", "싹싹 과제", "ㅁㄴㄹㄴㅇㅁ러ㅣㄷ루이누리Fnfkdfk d",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    ] {
        didSet {
            tableView.reloadData()
        }
    }
    
    var detailList = ["피쳐 1 개발", "손세정제 사야함", "퇴사를 해야갯서", "클론 12개 만들기"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.rowHeight = 80 // 모든 셀의 높이가 같으면 프로퍼티로 높이를 줘도 됨.
        tableView.rowHeight = UITableView.automaticDimension // 모든 셀의 높이가 같으면 프로퍼티로 높이를 줘도 됨.
        var age = 16
        var monster = Monster() // 인스턴스
        monster.clothes
    }
    
    @IBAction func randomButtonTapped(_ sender: UIBarButtonItem) {
        let random = ["장보기", "영화보기", "쇼핑하기", "맛집탐방", "새싹과제", "산책하기"]
        guard let item = random.randomElement() else { return }
        list.append(item)
        
        // 뷰와 데이터는 따로 논다~
//        tableView.reloadData()
    }
    
    // MARK: 필수 구현 메서드
    /// 1. 셀이 색션에 몇개씩 들어가느냐~
    /// 테이블뷰가 몇개의 셀로 구성되어 있는지 우리에게 알려주는 역할이 아니라, 몇개의 셀을 생성해야할지 iOS 시스템에게 알려주기 위해 작성
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
//        return 4  한줄짜리 리턴은 생략 가능
        
        /// Index out of range 오류가 많이 발생하는 부분
        /// indexPath의 row 수와 item list의 갯수가 맞지 않으면 에러가 발생함.
        /// 그래서 일반적으로 다음과 같이 사용함.
        return list.count
        
    }
    
    // 이 함수는 단일 섹션으로 구현할거라면 굳이 안해도 댐. 기본값이 1이기 때문.
    //    override func numberOfSections(in tableView: UITableView) -> Int {
    //        <#code#>
    //    }

    
    /// 2. 셀 디자인 및 데이터 처리
    /// 씬에 표현해야 할 셀의 수만큼 반복적으로 호출
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "basicTableViewCell") else {
            print("cell identifier error")
            return UITableViewCell()
        }
        cell.textLabel?.text = list[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        
        cell.detailTextLabel?.setPrimaryLabel("tttt")
//        cell.detailTextLabel?.text = detailList[indexPath.row]
        
        cell.textLabel?.textColor = .blue
        cell.textLabel?.font = .systemFont(ofSize: 30)
        cell.backgroundColor = indexPath.row % 2 == 0 ? .gray.withAlphaComponent(0.5) : .white
        
        print(#function, indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function, indexPath)
        list.remove(at: indexPath.row)
    }
    
    
    /// 3. 셀의 높이
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        print(#function)
//        
//        return 80 // 마찬가지로 리턴 생략 가능
//    }
    

}
