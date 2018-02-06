//
//  ServerDataWork.swift
//  RossiHD
//
//  Created by 赵一欢 on 2018/2/6.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

import UIKit
import Alamofire
func loginRossiWithUsername(_ userName:String, password:String, storeId:String , successCallback : @escaping (_ result : Any) -> () , failureCallback : @escaping (_ result : Error) -> ()) -> Void {
    let parameters: Parameters = [
        "user_name":userName,
        "password":password,
        "store_id":storeId,
        "device_name":"iOS_iPad"
    ]
    let headers: HTTPHeaders = [
        "Authorization": "Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==",
        "Accept": "application/json"
    ]
    Alamofire.request("login".getServerUrl(), method: .post, parameters: parameters, encoding: URLEncoding.default, headers: headers).responseJSON { (respond) in
        if let JSON = respond.result.value {
            successCallback(JSON)
        }
        if let error = respond.error
        {
            failureCallback(error)
        }
    }
}
