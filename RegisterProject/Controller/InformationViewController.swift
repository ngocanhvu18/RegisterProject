//
//  InformationViewController.swift
//  RegisterProject
//
//  Created by NgocAnh on 5/4/18.
//  Copyright © 2018 NgocAnh. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {

    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var districtTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        cityTextField.text = UserDefaults.standard.string(forKey: "city")
        districtTextField.text = UserDefaults.standard.string(forKey: "district")
        ageTextField.text = UserDefaults.standard.string(forKey: "age")
        genderTextField.text = UserDefaults.standard.string(forKey: "gender")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
