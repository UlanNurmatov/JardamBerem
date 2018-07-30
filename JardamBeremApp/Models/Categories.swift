//
//  Categories.swift
//  JardamBeremApp
//
//  Created by Marat on 30.07.2018.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation


class CategoryResult : Decodable {
    let count : Int?
    let results : [Category]?
}

class Category : Decodable {
    let id : Int?
    let category_name : String?
}
