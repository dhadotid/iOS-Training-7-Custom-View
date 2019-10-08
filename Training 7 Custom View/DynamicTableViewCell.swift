//
//  DynamicTableViewCell.swift
//  Training 7 Custom View
//
//  Created by yudha on 08/10/19.
//  Copyright © 2019 yudha. All rights reserved.
//

import UIKit

class DynamicTableViewCell: UITableViewCell {

    @IBOutlet weak var lblHeader: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
