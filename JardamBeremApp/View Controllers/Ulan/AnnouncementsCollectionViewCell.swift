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
    
    var announcement: Announcement?
    
    func setAnnouncement(announcement: Announcement) {
        label.text = announcement.title
        guard let imagePath = announcement.imgPath else {
            return
        }
        let url = URL(string: imagePath)
        image.kf.setImage(with: url)
    }
}
