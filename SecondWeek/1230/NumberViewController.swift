//
//  NumberViewController.swift
//  SecondWeek
//
//  Created by BAE on 12/30/24.
//

import UIKit
import Kingfisher

class NumberViewController: UIViewController {
    
    @IBOutlet var numberTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var kfImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewBackgroundColor()
        let savedData =  UserDefaults.standard.string(forKey: "savedLabel")
        numberTextField.text = savedData
        print(NSHomeDirectory())
        dateLabel.text = getToday()
        
        kfImageView.kf.setImage(with: URL(string: ("https://i.namu.wiki/i/BN1Z3IbM4VoVibKa-QU_sVlmYeBGddpnfQHOlW1InGTFxPLuQqZ397HpsPvgI4ZS-nlvOFGVjOF9z6g3RVn1_A.webp")))
    }
    
    @IBAction func textFieldTextChanged(_ sender: UITextField) {
        
        // 입력한 내용이 숫자라면 숫자 그대로 출력
        // 입력한 내용이 문자라면 나숫자가 아닙니다 출력
        
        if let text = numberTextField.text {
            if (Int(text) != nil) {
                resultLabel.text = text
            } else {
                resultLabel.text = "숫자가 아닙니다."
            }
        }
        
        guard let currentText = numberTextField.text else { fatalError() }
        resultLabel.text = currentText
        
//        if let intCurrentText = Int(currentText) {
//            resultLabel.text = "\(intCurrentText)"
//        } else {
//            resultLabel.text = "숫자가 아닙니다."
//        }
//        
//        guard let intCurrent = Int(currentText) else {
//            resultLabel.text = "숫자가 아닙니다."
//            return
//        }
//        resultLabel.text = "\(intCurrent)"
        
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        if let text = numberTextField.text {
            UserDefaults.standard.setValue(text, forKey: "savedLabel")
            resultLabel.text = "\(resultLabel.text!)\n저장되었습니다."
            
        } else {
            resultLabel.text = "nil 값은 저장할 수 없습니다."
        }
        
        // Alert
        //1. 타이틀 + 메세지
        let alert = UIAlertController(title: /*"저장되었습니다."*/nil, message: "숫자가 성공적으로 저장되었습니다.", preferredStyle: .actionSheet)
        //2. 버튼
        let okButton = UIAlertAction(title: "확인", style: .default)
        let test1 = UIAlertAction(title: "테스트1", style: .cancel)
        let test2 = UIAlertAction(title: "테스트2", style: .default)
        let test3 = UIAlertAction(title: "테스트3", style: .default)
        //3. 본문에 버튼 추가 : 순서대로 붙음
        alert.addAction(okButton)
        alert.addAction(test1)
        alert.addAction(test2)
        alert.addAction(test3)
        //4. 화면에 띄우기
        present(alert, animated: true)
        
    }
    
    fileprivate func getToday() -> String {
        let format = DateFormatter()
        format.dateFormat = "yy년 MM월 dd일"
        let today = format.string(from: Date())
        dateLabel.text = today
        return today
    }
    
//    @discardableResult func getToday() -> String {
//        let format = DateFormatter()
//        format.dateFormat = "yy년 MM월 dd일"
//        let today = format.string(from: Date())
//        print(today)
//        return today
//    }
    
    // Swift5.1 Implicit returns
    func randomInt() -> Int {
        Int.random(in: 1...100)
    }
}
