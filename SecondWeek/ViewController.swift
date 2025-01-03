//
//  ViewController.swift
//  SecondWeek
//
//  Created by BAE on 12/30/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var wordTextField: UITextField!
    @IBOutlet var recommendButton: UIButton!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // titleLabel 은 get-only property
//        recommendButton.titleLabel?.textColor = .red
        recommendButton.backgroundColor = .white
//        print(resultLabel.isUserInteractionEnabled)
        resultLabel.isUserInteractionEnabled = true
//        recommendButton.isEnabled
    }

    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        // textField의 text와 label의 text 모두 optional Text이기 때문에 에러 X
        let word = wordTextField.text!.uppercased()
        resultLabel.text = "\(word)"
        
        //  애플은 whitespace를 없앨 수 있는 기능도 제공
        if word.count == 0 || word == " " {
            resultLabel.text = "검색으러르를ㄹ으어어ㅓ어"
        } else if word == "jmt" {
            resultLabel.text = "완전맛있음"
        } else {
            resultLabel.text = "\(word)로 입력햇서요"
        }
        
        
        // method1
        // let word = wordTextField.text!
        
        // method2
        // resultLabel.text = "\(word!)"

        // method3
        // if let word = wordTextField.text {
        //     resultLabel.text = word
        // }
        
        // method4
        // guard let word = wordTextField.text else { fatalError() }

        // method5
        // if wordTextField.text != nil {
        //     resultLabel.text = wordTextField.text
        // }
        
        // method6
        // let word = textField.text
        // if text == nil {
        //     resultLabel.
        
        
        // ? 이거 왜 안나오노
//        if let word = wordTextField.text {
//            resultLabel.text = word
//        } else {
//            resultLabel.text = "검색어를 입력해주세요."
//        }
//         textField의 text는 값이 nil 이어도 빈 문자열을 반환함.
        
    }
    
    @IBAction func labelTapped(_ sender: UITapGestureRecognizer) {
        print(#function)
    }
    
    func aboutOptional() {
//        nickname 변수는 Optional이기 아니기 때문에 Nil을 할당할 수 없음.
//        var nickname: String = "Sean"
//        nickname = nil
        
        var nickname: String? = "고래밥"
        nickname = nil
        var age: Int? = 22
        
        
//        // 1. 조건문을 활용한 언래핑
//        if nickname == nil {
//            print("닉네임에 문제가 있어요")
//        } else {
//            print("\(nickname!)으로 설정합니다.")
//        }
//        
//        // 2-1. if-let 옵셔널 바인딩
//        if let nickname = nickname {
//            print("\(name)으로 설정합니다.")
//        } else {
//            print("닉네임에 문제가 있어요.")
//        }
//        
//        // 2-2. if let shorthand
//        if let age {
//            print(age)
//        } else {
//            print("나이가 nil입니다.")
//        }
//        
//        // 2-3. guard-let 옵셔널 바인딩 (shorthand)
//        guard let age else {
//            print("age is nil")
//            return // nil 값이 나올 경우 이후 코드에서 문제가 생길 수 있기 때문에 return
//        }
//        
//        // 3. ?? Default Value
//        print(nickname ?? "손님")
//        
//        // 4. 옵셔널 체이닝
//        wordTextField.text?.count
        
    }
}

