//
//  MainCustomerCardTableViewCell.swift
//  RossiHD
//
//  Created by 赵一欢 on 2018/1/22.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

import UIKit

class MainCustomerCardTableViewCell: UITableViewCell {

    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var customerNameLabel: UILabel!
    @IBOutlet var backgroudView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroudView.layer.borderColor = UIColor.RGBA(r: 244, g: 146, b: 49, a: 1).cgColor
        backgroudView.layer.borderWidth = CGFloat(2)
        backgroudView.layer.cornerRadius = 8
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
