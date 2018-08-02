//
//  CharityViewController.swift
//  JardamBeremApp
//
//  Created by Marat on 02.08.2018.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit
import Kingfisher

class CharityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.manager.charities!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CharityTableViewCell
        let url = URL(string: DataManager.manager.charities![indexPath.row].imgPath!)
        cell.imgView.kf.setImage(with: url)
        cell.titleLabel.text = DataManager.manager.charities![indexPath.row].title!
        return cell
    }

}
