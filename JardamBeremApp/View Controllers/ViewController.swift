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
    var datamanager = DataManager.manager
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ServerManager.shared.getCategories(cityID: self.exampleCityId, completion: printCategories, error: printError)
        ServerManager.shared.getCharities(completion : printCharities, error: printError)
        ServerManager.shared.getForum(completion : printForum, error: printError)
        ServerManager.shared.getAnnouncements(completion: printAnnouncements, error: printError)
    }
    
    func printCategories(categories : CategoryResult){
        for c in categories.results! {
            print(c.category_name ?? "empty")
            print(c.category_imgPath ?? "empty")
        }
        datamanager.categories = categories.results
    }
    
    func printCharities(charities : CharityResults) {
        for i in charities.results {
            print(i.title ?? "empty")
        }
        datamanager.charities = charities.results
        
    }
    
    func printForum(forum : ForumResults) {
        for i in forum.results {
            print(i.nickName ?? "empty")
            print(i.comment ?? "empty")
        }
        datamanager.forum = forum.results
    }
    
    func printAnnouncements(announcements : AnnouncementsResults) {
        for i in announcements.results {
            print("TITLE")
            print((i.title) ?? "empty")
            print("DESCRIPTION")
            print(i.description ?? "empty")
        }
        datamanager.announcements = announcements.results
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

