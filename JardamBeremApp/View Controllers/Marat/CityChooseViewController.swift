//
//  LanguageChooseViewController.swift
//  JardamBeremApp
//
//  Created by Marat on 31.07.2018.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class CityChooseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView : UITableView!
    @IBOutlet weak var continueButton : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        continueButton.isHidden = true
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.manager.cities!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = DataManager.manager.cities![indexPath.row].city_name!
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DataManager.manager.selectedCity = DataManager.manager.cities![indexPath.row]
        self.continueButton.isHidden = false
    }
    
}
