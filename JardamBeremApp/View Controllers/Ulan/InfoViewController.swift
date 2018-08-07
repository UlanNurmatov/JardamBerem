//
//  InfoViewController.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 8/7/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        table.rowHeight = 200
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.manager.info!.count
    }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InfoId", for: indexPath) as! InfoCell
        cell.setInfoCell(info: DataManager.manager.info![indexPath.row])
        return cell
    }


}
