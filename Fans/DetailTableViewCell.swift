//
//  DetailTableViewCell.swift
//  Fans
//
//  Created by kaitouLee on 2017/5/5.
//  Copyright © 2017年 kaitouLee. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {


    @IBOutlet weak var fieldLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
