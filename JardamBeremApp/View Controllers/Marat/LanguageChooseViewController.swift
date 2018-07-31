//
//  LanguageChooseViewController.swift
//  JardamBeremApp
//
//  Created by Marat on 31.07.2018.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class LanguageChooseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let manager = DataManager.manager

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.manager.cities!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = manager.cities![indexPath.row].city_name!
        return cell
    }
    
}
