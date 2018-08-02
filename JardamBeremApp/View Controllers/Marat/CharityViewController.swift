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
    
    @IBOutlet weak var tableView : UITableView!

    var currentIndexPath = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = 300
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return DataManager.manager.charities!.count
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.frame.size.height = 125.0
        return view
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CharityTableViewCell
        if self.currentIndexPath < DataManager.manager.charities!.count {
            self.currentIndexPath += 1
        }
        let url = URL(string: DataManager.manager.charities![currentIndexPath].imgPath!)
        cell.imgView.kf.setImage(with: url)
        cell.titleLabel.text = DataManager.manager.charities![currentIndexPath].title!
        return cell
    }
}
