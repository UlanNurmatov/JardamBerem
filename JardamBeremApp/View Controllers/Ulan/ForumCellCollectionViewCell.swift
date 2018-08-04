//
//  ForumCellCollectionViewCell.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 8/4/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class ForumCellCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var message: UITextView!
    @IBOutlet weak var user: UILabel!
    
    func setForum(entry: ForumEntry) {
        message.text = entry.comment
        user.text = entry.nickName
    }
}
