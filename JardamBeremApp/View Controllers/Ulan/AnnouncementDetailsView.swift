//
//  AnnouncementDetailsView.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 8/4/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit
import Kingfisher

class AnnouncementDetailsView: UIViewController {
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var titleOf: UILabel!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var telephone: UILabel!

    var chosenAnnouncement: Announcement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if chosenAnnouncement?.imgPath != nil {
            let url = URL(string: chosenAnnouncement!.imgPath!)
            image1.kf.setImage(with: url)
        } else {
            image1.image = #imageLiteral(resourceName: "Group 6")
        }
        titleOf.text = chosenAnnouncement?.title
        details.text = chosenAnnouncement?.description
        telephone.text = chosenAnnouncement?.number
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

   

}
