//
//  MainScreenViewController.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 7/31/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var announcementsCollectionView: UICollectionView!
    var datamanager = DataManager.manager
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        announcementsCollectionView.dataSource = self
        collectionView.delegate = self
        announcementsCollectionView.delegate = self
    
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == self.collectionView){
            return DataManager.manager.categories!.count
        } else {
            return (DataManager.manager.announcements!.count)
        }
     }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        if (collectionView == self.collectionView) {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCell", for: indexPath) as! CollectionViewCell
        cell.setCategoryTitle(catergory: DataManager.manager.categories![indexPath.item])
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AnnouncementCell", for: indexPath) as! AnnouncementsCollectionViewCell
            cell.setAnnouncement(announcement: DataManager.manager.announcements![indexPath.item])
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if (collectionView == self.collectionView) {
        let id = DataManager.manager.categories![indexPath.item].id!
        ServerManager.shared.getAnnouncements(categoryId: id, completion: updateAnnouncements, error: printError)
        } else {
            let sb = UIStoryboard(name: "UlanStoryboard", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "AnnouncementDetails") as! AnnouncementDetailsView
            
            let chosenAnnouncement = DataManager.manager.announcements![indexPath.item]
            vc.chosenAnnouncement = chosenAnnouncement
            show(vc, sender: self)
        }
    }
    
    func updateAnnouncements(announcements : AnnouncementsResults) {
        datamanager.announcements = announcements.results
        self.announcementsCollectionView.reloadData()
    }
    func printError(error : String) {
        print(error)
}
}

