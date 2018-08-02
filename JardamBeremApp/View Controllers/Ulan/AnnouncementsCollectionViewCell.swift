//
//  AnnouncementsCollectionViewCell.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 8/1/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit
import Kingfisher

class AnnouncementsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    
    func setAnnouncement(anouncement: Announcement) {
        label.text = anouncement.title
        
        let url = URL(string: anouncement.imgPath!)
        image.kf.setImage(with: url)
    }
}
