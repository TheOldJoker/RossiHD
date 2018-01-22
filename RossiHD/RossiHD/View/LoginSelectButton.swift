//
//  LoginSelectButton.swift
//  Rossi
//
//  Created by 赵一欢 on 2018/1/21.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

import UIKit

class LoginSelectButton: UIButton {
    let trigonLayer = CAShapeLayer.init()
    override func awakeFromNib() {
        baseConfig()
    }
    private func baseConfig() -> Void{
        trigonLayer.frame = CGRect.init(x: 5, y: 5, width: 20, height: 20)
        trigonLayer.fillColor = UIColor.orange.cgColor
        let bezierPath = UIBezierPath.init()
        bezierPath.move(to: CGPoint.init(x: 0, y: 0))
        bezierPath.addLine(to: CGPoint.init(x: 20, y: 0))
        bezierPath.addLine(to: CGPoint.init(x: 10, y: 20))
        bezierPath.addLine(to: CGPoint.init(x: 0, y: 0))
        bezierPath.close()
        bezierPath.fill()
        trigonLayer.path = bezierPath.cgPath
        self.layer.addSublayer(trigonLayer)
    }
    
    func showSelectTrigonLayer(show:Bool) -> Void {
        if show {
           self.trigonLayer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 0, 1)
        }else{
            self.trigonLayer.transform = CATransform3DMakeRotation(CGFloat(Double.pi * 2), 0, 0, 1)
        }
    }
}
