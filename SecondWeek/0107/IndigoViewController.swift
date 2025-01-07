//
//  IndigoViewController.swift
//  SecondWeek
//
//  Created by BAE on 1/7/25.
//

import UIKit

class IndigoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func popButtonTapped(_ sender: UIButton) {
        print(#function)
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func dismissButtonTapped(_ sender: UIButton) {
        print(#function)
        self.dismiss(animated: true)
    }
    
    
}
