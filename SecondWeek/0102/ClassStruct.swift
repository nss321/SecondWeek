//
//  ClassStruct.swift
//  SecondWeek
//
//  Created by BAE on 1/2/25.
//

import Foundation


// 1. 가지고 있는 프로퍼티를 모두 초기화
// 2. 가지고 있는 프로퍼티를 옵셔널로 선언
class Monster {
    var clothes: String?
    var speed = 5
    var power = 10
    var experience = 5
    
    func initializer(a: String, b: Int, c: Int, d: Int) {
        print(#function)
        self.clothes = a
        self.speed = b
        self.power = c
        self.experience = d
    }
    
    init(clothes: String? = nil) {
        self.clothes = clothes
    }
}
//
//class BossMonster: Monster {
//
//}

struct MonsterStruct {
    let clothes: String?
    let speed = 5
    let power = 10
    let experience = 5
    
    // init이 없더라도 기본적으로 제공 -> mwmberwise initialize
}
