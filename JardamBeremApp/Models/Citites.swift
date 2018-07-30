//
//  Citites.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 7/30/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation

class CityResult: Decodable {
    var results: [City] = []
}

class City: Decodable {
    var id: Int?
    var city_name: String?
}
