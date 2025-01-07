//
//  UIColor+.swift
//  SecondWeek
//
//  Created by BAE on 1/6/25.
//

import UIKit

extension UIColor {
//    ㄹ#colorLiteral(red: 0.1630461514, green: 0.1623538136, blue: 0.1879000962, alpha: 1)
    
    /// 익스텐션에서는 저장 프로퍼티는 사용할 수 없음.
    /// 인스턴스가 없기 때문.
    
    
    /// computed property
    var xcodeDarkModeBackgroundColor: UIColor {
        return .darkGray
    }
    
    /// 타입 프로퍼티는 별도 공간에 저장되므로 인스턴스 유무와 상관 없음.
    /// 아래 프로퍼티는 타입 프로퍼티임과 동시에 저장 프로퍼티임.
    static let xcdeDarkModeBgColor = UIColor.darkGray
}
