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
    var category_imgPath : String? = "https://psv4.userapi.com/c848036/u11618358/docs/d11/593a5cc72937/Group_6.png"
    var category_imgPath_height : Int?
    var category_imgPath_width : Int?
    var category_name : String?
}




