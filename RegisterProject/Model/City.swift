//
//  City.swift
//  RegisterProject
//
//  Created by NgocAnh on 5/2/18.
//  Copyright © 2018 NgocAnh. All rights reserved.
//

import Foundation

class City {
    
    var name: String
    var cityCode: Int
    
    init(name: String, cityCode: Int) {
        self.name = name
        self.cityCode = cityCode
    }
    
    convenience init?(dictionary: DIC) {
        guard let name = dictionary["Name"] as? String, let cityCode = dictionary["CityCode"] as? Int else { return nil }
        self.init(name: name, cityCode: cityCode)
    }
}
