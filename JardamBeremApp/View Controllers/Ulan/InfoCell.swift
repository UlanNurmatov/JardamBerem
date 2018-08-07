//
//  InfoCell.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 8/7/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class InfoCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setInfoCell(info: Info) {
        titleLabel.text = info.title
        dateLabel.text = info.date
    }

  
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
