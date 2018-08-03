//
//  FeedBack.swift
//  JardamBeremApp
//
//  Created by Marat on 03.08.2018.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation

struct Review {
    var email : String
    var reviewText : String
    
    func reviewToDictionary () -> [String : Any] {
        return ["email" : self.email,
                "reviewText" : self.reviewText]
    }
}


