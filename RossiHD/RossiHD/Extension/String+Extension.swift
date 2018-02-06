//
//  String+Extension.swift
//  LePaoSwift
//
//  Created by 赵一欢 on 2017/8/2.
//  Copyright © 2017年 zhaoyihuan. All rights reserved.
//

import UIKit

extension String
{
    func length() -> Int {
        return self.count
    }
    func getServerUrl() -> String {
        return "http://rossi.infiniproj.com/metadata/" + self
    }
}
