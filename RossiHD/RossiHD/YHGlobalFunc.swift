//
//  YHGlobalFunc.swift
//  SwiftProject0722
//
//  Created by 赵一欢 on 2017/7/22.
//  Copyright © 2017年 zhaoyihuan. All rights reserved.
//

import UIKit
func YHLog<T>(message: T, fileName: String = #file, methodName: String = #function, lineNumber: Int = #line)
{
    #if DEBUG
        print("\(methodName)[\(lineNumber)]:\(message)")
    #endif
}
