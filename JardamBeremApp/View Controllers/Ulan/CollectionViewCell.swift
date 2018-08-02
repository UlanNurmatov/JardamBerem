//
//  CollectionViewCell.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 7/31/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit
import Kingfisher

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var categoryTitle: UILabel!
    
    @IBOutlet weak var categoryImage: UIImageView!
    
    func setCategoryTitle(catergory: Category) {
        categoryTitle.text = catergory.category_name
        
        if catergory.category_imgPath != nil {
            let url = URL(string: catergory.category_imgPath!)
            categoryImage.kf.setImage(with: url)
        } else {
            categoryImage.image = #imageLiteral(resourceName: "Group 6")
        }
}
}
