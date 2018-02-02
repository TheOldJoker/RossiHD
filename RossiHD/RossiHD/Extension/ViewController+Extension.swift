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
    func tabBarSelectIndex(_ index:Int) -> Void {
        
        self.tabBarController?.selectedIndex = index
    }
    func fixNavgationControllerScreenWithSize(_ size: CGSize) -> Void {
        self.navigationController?.view.frame = CGRect.init(x: 0, y: 0, width: size.width, height: size.height)
        self.navigationController?.view.center = CGPoint.init(x: SCREEN_WIDTH / 2, y: SCREEN_HEIGHT / 2)
        self.navigationController?.view.layer.cornerRadius = 8
        self.navigationController?.view.clipsToBounds = true
        self.view.frame = (self.navigationController?.view.frame)!
    }
    func fixNavgationControllerScreenForAlert() -> Void {
        let width = SCREEN_WIDTH / 2
        let height = SCREEN_HEIGHT - 100
        self.navigationController?.view.frame = CGRect.init(x: 0, y: 0, width:width, height:height)
        self.navigationController?.view.center = CGPoint.init(x: SCREEN_WIDTH / 2, y: SCREEN_HEIGHT / 2)
        self.navigationController?.view.layer.cornerRadius = 8
        self.navigationController?.view.clipsToBounds = true
        self.view.frame = (self.navigationController?.view.frame)!
    }
    func navBarBackgroundColor(_ backgroudColor:UIColor, titleColor:UIColor) -> Void {
        self.navigationController?.navigationBar.barTintColor = backgroudColor
        self.navigationController?.navigationBar.titleTextAttributes = {[NSAttributedStringKey.foregroundColor : titleColor]}()
    }
    @objc func pop() -> Void {
        self.navigationController?.popViewController(animated: true)
    }
}
