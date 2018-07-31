//
//  DataManager.swift
//  JardamBeremApp
//
//  Created by Marat on 30.07.2018.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation


class DataManager {
    static let manager = DataManager()
    var cities : [City]?
    var categories : [Category]?
    var charities : [Charity]?
}
