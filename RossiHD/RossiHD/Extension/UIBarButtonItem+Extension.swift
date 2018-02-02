//
//  UIBarButtonItem+Extension.swift
//  RossiHD
//
//  Created by 赵一欢 on 2018/2/2.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

import UIKit
extension UIBarButtonItem {
    class func initCloseButtonWtihTarget(_ target: Any?, action: Selector) ->UIBarButtonItem {
        let button = UIButton.init(type: UIButtonType.custom)
        button.frame = CGRect.init(x: 0, y: 0, width: 60, height: 30)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        button.backgroundColor = UIColor.RGBA(r: 245, g: 116, b: 69, a: 1)
        button.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
        button.setTitle("Close", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        let barButton = UIBarButtonItem.init(customView: button)
        return barButton
    }
    class func initBackButtonWtihTarget(_ target: Any?, action: Selector) ->UIBarButtonItem {
        let button = UIButton.init(type: UIButtonType.custom)
        button.frame = CGRect.init(x: 0, y: 0, width: 60, height: 30)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        button.backgroundColor = UIColor.RGBA(r: 245, g: 116, b: 69, a: 1)
        button.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
        button.setTitle("Back", for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        let barButton = UIBarButtonItem.init(customView: button)
        return barButton
    }
    class func initRightButtonWtihTitle(_ title: String,backgroundColor: UIColor, target: Any?, action: Selector) ->UIBarButtonItem {
        let button = UIButton.init(type: UIButtonType.custom)
        button.frame = CGRect.init(x: 0, y: 0, width: 60, height: 30)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        button.backgroundColor = backgroundColor
        button.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
        button.setTitle(title, for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        let barButton = UIBarButtonItem.init(customView: button)
        return barButton
    }
}
