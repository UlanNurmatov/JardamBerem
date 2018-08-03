//
//  Announcement.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 8/2/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation

class AnnouncementsResults : Decodable {
    var results: [Announcement] = []
}

class Announcement: Decodable {
    var id: Int?
    var city: Int?
    var category: Int?
    var isNeeded: Bool?
    var title: String?
    var description: String?
    var number: String?
    var userImeiCode: String?
    var imgPath: String?
    var imgPath_height: Int?
    var imgPath_width: Int?
    var imgPath2: String?
    var imgPath2_height: Int?
    var imgPath2_width: Int?
    var imgPath3: String?
    var imgPath3_height: Int?
    var imgPath3_width: Int?
    var date: String?
}
