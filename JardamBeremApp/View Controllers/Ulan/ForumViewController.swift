//
//  ForumViewController.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 8/4/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class ForumViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataManager.manager.forum!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ForumCell", for: indexPath) as! ForumCellCollectionViewCell
        cell.setForum(entry: DataManager.manager.forum![indexPath.item])
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
