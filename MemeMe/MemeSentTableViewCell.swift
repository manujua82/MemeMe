//
//  MemeSentTableViewCell.swift
//  MemeMe
//
//  Created by Juan Salcedo on 1/19/17.
//  Copyright © 2017 Juan Salcedo. All rights reserved.
//

import UIKit

class MemeSentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var memeLabelTop: UILabel!
    @IBOutlet weak var memeLabelBottom: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
