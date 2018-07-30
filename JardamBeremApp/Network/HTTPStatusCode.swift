//
//  HTTPStatusCode.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 7/30/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation

public enum HTTPStatusCode: Int {
    case ok             = 200
    case created        = 201
    case accepted       = 202
    case badRequest     = 400
    case unauthorized   = 401
    case forbidden      = 403
    case notFound       = 404
    case conflict       = 409
    case serverIsBusy   = 429
    case internalServerError    = 500
    case serviceError           = 502
    case serviceUnavailable     = 503
    case serviceDowntime        = 504
    
    public var statusCode : Int {
        return self.rawValue
    }
    
    func isSuccess() -> Bool {
        switch(self) {
        case .ok, .created, .accepted:
            return true
        default:
            return false
        }
    }
}
