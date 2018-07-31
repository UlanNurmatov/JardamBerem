//
//  CollectionViewCell.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 7/31/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var categoryTitle: UILabel!
    
    @IBOutlet weak var categoryImage: UIButton!
    
    func setCategoryTitle(catergory: Category) {
        categoryTitle.text = catergory.category_name
        
    }
}
