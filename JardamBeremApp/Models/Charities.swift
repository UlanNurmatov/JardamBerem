//
//  Charities.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 7/30/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation

class CharityResults: Decodable {
    var results: [Charity] = []
}

class Charity: Decodable {
    var id: Int?
    var title: String?
    var description: String?
    var date: String?
    var imgPath: String?
    var imgPath_height: Int?
    var imgPath_width: Int?
    var imgPath2: String?
    var imgPath2_height: Int?
    var imgPath2_width: Int?
    var imgPath3: String?
    var imgPath3_height: Int?
    var imgPath3_width: Int?
}
