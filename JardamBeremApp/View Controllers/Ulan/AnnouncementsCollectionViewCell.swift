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
    
    
    func setAnnouncement(announcement: Announcement) {
        label.text = announcement.title
        
        let url = URL(string: announcement.imgPath!)
        image.kf.setImage(with: url)
    }
}
