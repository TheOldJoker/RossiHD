//
//  button+Extension.swift
//  Rossi
//
//  Created by 赵一欢 on 2018/1/20.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

import UIKit

extension UIButton
{
    struct runtimeKey {
        static let tempBackgroudColor = UnsafeRawPointer.init(bitPattern: "tempBackgroudColor".hashValue)
    }
    var tempBackgroudColor: UIColor? {
        set {
            objc_setAssociatedObject(self, UIButton.runtimeKey.tempBackgroudColor!, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
        
        get {
            return  objc_getAssociatedObject(self, UIButton.runtimeKey.tempBackgroudColor!) as? UIColor
        }
    }
    func setButtonCanClicked(can:Bool) -> Void {
        self.isUserInteractionEnabled = can
        if can {
            guard (self.tempBackgroudColor != nil) else {
                return
            }
            self.backgroundColor = self.tempBackgroudColor
            return
        }
        self.backgroundColor = UIColor.RGBA(r: 1, g: 1, b: 1, a: 0.13)
    }
}
