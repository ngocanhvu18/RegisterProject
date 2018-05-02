//
//  ViewController.swift
//  RegisterProject
//
//  Created by NgocAnh on 5/2/18.
//  Copyright © 2018 NgocAnh. All rights reserved.
//

import UIKit
typealias DIC = Dictionary<AnyHashable,Any>

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let filePath = Bundle.main.path(forResource: "Cities", ofType: "plist") {
            guard FileManager.default.fileExists(atPath: filePath) else {return}
            guard let data = FileManager.default.contents(atPath: filePath) else {return}
            guard let result = try? PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil) else {return}
            guard let dataCity = result as? DIC else {return}
            guard let cities = dataCity["Cities"] as? [DIC] else {return}
            print(cities)
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

