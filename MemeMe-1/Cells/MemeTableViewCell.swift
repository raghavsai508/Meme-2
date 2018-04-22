//
//  MemeTableViewCell.swift
//  MemeMe-1
//
//  Created by Raghav Sai Cheedalla on 4/15/18.
//  Copyright © 2018 SwiftEnthusiast. All rights reserved.
//

import UIKit

class MemeTableViewCell: UITableViewCell {

    
    @IBOutlet weak var memeImage: UIImageView!
    @IBOutlet weak var memeTitleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.memeImage.image = nil
    }

}
