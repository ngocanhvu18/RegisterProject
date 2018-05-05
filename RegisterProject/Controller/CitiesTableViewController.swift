//
//  CitiesTableViewController.swift
//  RegisterProject
//
//  Created by NgocAnh on 5/2/18.
//  Copyright © 2018 NgocAnh. All rights reserved.
//

import UIKit

class CitiesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DataService.shared.cityCode = nil
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DataService.shared.cities.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // Configure the cell...
        cell.textLabel?.text = DataService.shared.cities[indexPath.row].name
//        cell.detailTextLabel?.text = String(DataService.shared.cities[indexPath.row].cityCode)
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DataService.shared.cityCode = DataService.shared.cities[indexPath.row].cityCode
        UserDefaults.standard.set(DataService.shared.cities[indexPath.row].name, forKey: "city")
    }
    
}
