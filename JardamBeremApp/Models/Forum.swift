//
//  Forum.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 7/31/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation

class ForumResults: Decodable {
    var results: [ForumEntry] = []
}

class ForumEntry: Decodable {
    var id: Int?
    var nickName: String?
    var phoneNumber: String?
    var comment: String?
    var date: String?
}
