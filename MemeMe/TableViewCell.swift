//
//  TableViewCell.swift
//  MemeMe 1.0
//
//  Created by Mac User on 2/27/19.
//  Copyright © 2019 Me. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var tableImage: UIImageView!
    
    @IBOutlet weak var tableText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
