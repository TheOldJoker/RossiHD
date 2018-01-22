//
//  ViewController+Extension.swift
//  Rossi
//
//  Created by 赵一欢 on 2018/1/20.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

import UIKit

extension UIViewController{
    func presentLoginViewController() -> Void {
        let sb = UIStoryboard.init(name: "login", bundle: nil)
        self.present(sb.instantiateViewController(withIdentifier: "Login"), animated: true, completion: nil)
    }
}
