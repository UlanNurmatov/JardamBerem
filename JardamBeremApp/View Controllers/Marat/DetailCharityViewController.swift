//
//  DetailCharityViewController.swift
//  JardamBeremApp
//
//  Created by Marat on 02.08.2018.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit
import Kingfisher

class DetailCharityViewController: UIViewController {

    @IBOutlet weak var imgView : UIImageView!
    @IBOutlet weak var titleLabel : UILabel!
    @IBOutlet weak var descriptionLabel : UILabel!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func setData (imageURL : String,title : String, description : String) {
        
        let url = URL(string : imageURL)
        self.imgView.kf.setImage(with: url)
        
    }
}
