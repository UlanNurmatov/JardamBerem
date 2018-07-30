//
//  ServerManager.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 7/30/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation

class ServerManager: HTTPRequestManager {
    static let shared = ServerManager()
    
    func getCities(completion: @escaping ([City]) -> (), error: @escaping (String) -> ()) {
        self.get(endpoint: Constants.Network.EndPoint.cities, completion: { (data) in
            //TODO
            do {
                guard let  data = data else { return }
                let result = try JSONDecoder().decode(CityResult.self, from: data)
                completion(result.results)
            }
            catch let errorMessage {
                error(errorMessage.localizedDescription)
            }
            
        }) { (errorMessage) in
            error(errorMessage)
        }
    }
    
    
}
