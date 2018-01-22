//
//  LoginTextField.swift
//  Rossi
//
//  Created by 赵一欢 on 2018/1/20.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

import UIKit

class LoginTextFieldBackgroundView: UIView {
    override func awakeFromNib() {
        baseConfig()
    }
    private func baseConfig(){
        self.backgroundColor = UIColor.white
        self.layer.borderWidth = 4
        self.layer.borderColor = UIColor.orange.cgColor
        self.layer.cornerRadius = 8
        self.layer.masksToBounds = true
    }
}
