//
//  YellowViewController.swift
//  SecondWeek
//
//  Created by BAE on 1/7/25.
//

import UIKit

class YellowViewController: UIViewController {
    
    /// 1.Pass Data
    var contens: String?
    
    @IBOutlet var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "엘로우"
        self.nameLabel.text = contens
    }

    @IBAction func popButtonTapped(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func dismissButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
