//
//  ViewController.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 7/30/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ServerManager.shared.getCities(completion: printCities, error: printError)
    }
    
    func printCities(cities: [City]) {
        for i in cities {
            print(i.city_name ?? "empty")
        }
    }
    
    func printError(error: String) {
        print(error)
    }
    
}

