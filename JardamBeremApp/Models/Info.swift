//
//  Info.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 8/7/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation

class InfoResults: Decodable {
    var results: [Info] = []
}

class Info: Decodable {
    var id: Int?
    var title: String?
    var description: String?
    var date: String?
}
