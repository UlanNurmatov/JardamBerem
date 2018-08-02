//
//  MainScreenViewController.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 7/31/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController, UICollectionViewDataSource {

    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var announcementsCollectionView: UICollectionView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        announcementsCollectionView.dataSource = self
        
         announcementsCollectionView.register(UINib.init(nibName: "AnnouncementCell", bundle: nil), forCellWithReuseIdentifier: "AnnouncementCell")
        announcementsCollectionView.register(AnnouncementsCollectionViewCell.self, forCellWithReuseIdentifier: "AnnouncementCell")
       
        

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
   

   
}
