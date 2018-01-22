//
//  UIColor+Extension.swift
//  Rossi
//
//  Created by 赵一欢 on 2018/1/20.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

import UIKit

extension UIColor {
    class func RGBA(r : Float , g : Float , b : Float , a : Float) -> UIColor {
        return UIColor.init(red: CGFloat(r / 255), green: CGFloat(g / 255), blue: CGFloat(b / 255), alpha: CGFloat(a))
    }
}
