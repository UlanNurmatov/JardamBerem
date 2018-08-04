//
//  ViewController.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 7/30/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class ViewController : UIViewController {
    
    var exampleCityId = "1"
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ServerManager.shared.getCities(completion: printCities, error: printError)
        ServerManager.shared.getCategories(cityID: self.exampleCityId, completion: printCategories, error: printError)
        ServerManager.shared.getCharities(completion : printCharities, error: printError)
        ServerManager.shared.getForum(completion : printForum, error: printError)
        ServerManager.shared.getAnnouncements(categoryId: 1, completion: printAnnouncements, error: printError)
    }
    
    func printCities (cities : CityResult) {
        for c in cities.results {
            print(c.city_name ?? "City is emty")
        }
        DataManager.manager.cities = cities.results
    }
    
    func printCategories(categories : CategoryResult){
        for c in categories.results! {
            print(c.category_name ?? "empty")
            print(c.category_imgPath ?? "empty")
        }
        DataManager.manager.categories = categories.results
    }
    
    func printCharities(charities : CharityResults) {
        for i in charities.results {
            print(i.title ?? "empty")
        }
        DataManager.manager.charities = charities.results
        
    }
    
    func printForum(forum : ForumResults) {
        for i in forum.results {
            print(i.nickName ?? "empty")
            print(i.comment ?? "empty")
        }
        DataManager.manager.forum = forum.results
    }
    
    func printAnnouncements(announcements : AnnouncementsResults) {
        for i in announcements.results {
            print("TITLE")
            print((i.title) ?? "empty")
            print("DESCRIPTION")
            print(i.description ?? "empty")
        }
        DataManager.manager.announcements = announcements.results
    }
    
    func printError(error : String) {
        print(error)
    }
    
    @IBAction func MaratButtonTapped() {
        let board = UIStoryboard(name: "MaratStoryboard", bundle: nil)
        let vc = board.instantiateInitialViewController()
        self.show(vc!, sender: self)
    }
    
    @IBAction func UlanButtonTapped() {
        let board = UIStoryboard(name: "UlanStoryboard", bundle: nil)
        let vc = board.instantiateInitialViewController()
        self.show(vc!, sender: self)
    }
    
}

