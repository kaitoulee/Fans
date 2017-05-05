//
//  CustomTableViewCell.swift
//  Fans
//
//  Created by kaitouLee on 2017/5/3.
//  Copyright © 2017年 kaitouLee. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    /*weak是弱引用
     @IBOutlet用于引用storyboard上的一个ui组件
     @IBAction用于响应一个ui组件的交互事件
     
     */
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var provinceLabel: UILabel!
    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var thumbImageView: UIImageView!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
