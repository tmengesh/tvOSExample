//
//  weatherTableViewCell.swift
//  weatherApp
//
//  Created by Tewodros Mengesha on 29/06/2018.
//  Copyright © 2018 Finwe Ltd. All rights reserved.
//

import UIKit

class weatherTableViewCell: UITableViewCell {

    @IBOutlet var lblCity : UILabel!
    @IBOutlet var imgCity : UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
