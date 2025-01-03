//
//  UILable+.swift
//  SecondWeek
//
//  Created by BAE on 1/2/25.
//

import UIKit

extension UILabel {
    func setPrimaryLabel(_ text: String) {
        self.font = .boldSystemFont(ofSize: 20)
        self.textColor = .red
        self.textAlignment = .center
        self.text = text
    }
}
