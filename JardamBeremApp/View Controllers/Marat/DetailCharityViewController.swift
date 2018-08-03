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
    @IBOutlet weak var descriptionView : UITextView!
    
    let senderVC : String = "" // needed to show that VC by "<" button on the navigation bar (back button)
    var dataToSet : (imageURL : String, title : String, description : String)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if  dataToSet != nil {
            setData(imageURL: self.dataToSet!.imageURL, title: self.dataToSet!.title, description: self.dataToSet!.description)
        }

    }
    
    override func viewDidAppear(_ animated: Bool) {

        if  dataToSet != nil {
            setData(imageURL: self.dataToSet!.imageURL, title: self.dataToSet!.title, description: self.dataToSet!.description)
        }
        
    }
    
    func setData (imageURL : String, title : String, description : String) {
        
        let url = URL(string : imageURL)
        self.imgView.kf.setImage(with: url)
        self.descriptionView.text = description
        self.titleLabel.text = title
        
    }
    
    @IBAction func backButtonTapped () {
        self.dismiss(animated: true, completion: nil)
    }
}
