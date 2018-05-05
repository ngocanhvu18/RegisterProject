//
//  DistrictsTableViewController.swift
//  RegisterProject
//
//  Created by NgocAnh on 5/2/18.
//  Copyright © 2018 NgocAnh. All rights reserved.
//

import UIKit

class DistrictsTableViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DataService.shared.distrists.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DistrictCell", for: indexPath)
        // Configure the cell...
        cell.textLabel?.text = DataService.shared.distrists[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UserDefaults.standard.set(DataService.shared.distrists[indexPath.row].name, forKey: "district")
    }
}
