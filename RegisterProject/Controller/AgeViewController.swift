//
//  AgeViewController.swift
//  RegisterProject
//
//  Created by NgocAnh on 5/2/18.
//  Copyright © 2018 NgocAnh. All rights reserved.
//

import UIKit

class AgeViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
    
    var array = Array(1...200)

    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var agePickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        agePickerView.delegate = self
        agePickerView.dataSource = self
        agePickerView.selectRow(17, inComponent: 0, animated: true)
//        let button = UIButton(type: .custom)
        showButton.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        showButton.layer.cornerRadius = showButton.frame.size.width / 2
        
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(describing: array[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        UserDefaults.standard.set(String(describing: array[row]), forKey: "age")
    }
}
