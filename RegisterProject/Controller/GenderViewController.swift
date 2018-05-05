//
//  GenderViewController.swift
//  RegisterProject
//
//  Created by NgocAnh on 5/4/18.
//  Copyright © 2018 NgocAnh. All rights reserved.
//

import UIKit

class GenderViewController: UIViewController {

    @IBOutlet var checkButton: [UIButton]!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        doneButton.isEnabled = false
    }
    
    @IBAction func checkTapped(_ sender: UIButton) {
        sender.isSelected = true
        checkButton.forEach { button in
            if button != sender {
                button.isSelected = false
                doneButton.isEnabled = true
            }
        }
        UserDefaults.standard.set(sender.currentTitle, forKey: "gender")
    }
    
    
}
