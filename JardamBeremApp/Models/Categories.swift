//
//  Categories.swift
//  JardamBeremApp
//
//  Created by Marat on 30.07.2018.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation


class CategoryResult : Decodable {
    var count : Int?
    var results : [Category]? = []
}

class Category : Decodable {
    var id : Int?
    var category_imgPath : String? 
    var category_imgPath_height : Int?
    var category_imgPath_width : Int?
    var category_name : String?
}




