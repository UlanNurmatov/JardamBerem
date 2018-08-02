//
//  CharityViewController.swift
//  JardamBeremApp
//
//  Created by Marat on 02.08.2018.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class CharityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.manager.charities!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }

}
