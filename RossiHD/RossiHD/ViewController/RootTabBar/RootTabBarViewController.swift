//
//  RootTabBarViewController.swift
//  RossiHD
//
//  Created by 赵一欢 on 2018/2/1.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

import UIKit

class RootTabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layer.contents = UIImage.init(named: "home_backgroud")?.cgImage
        self.view.contentMode = .scaleAspectFill
        initSubViews()
    }
    private func initSubViews() -> Void {
        let logoImageView = UIImageView.init(frame: CGRect.init(x: 20, y: 25, width: 157, height: 49))
        logoImageView.image = UIImage.init(named: "home_logo")
        view.addSubview(logoImageView)
        
        let names = ["Workorder","POS","Inventory","Customers"]
        for i in 0...names.count - 1 {
            let button = UIButton.init(frame: CGRect.init(x: 177 + 80 + (5 + 150) * i, y: 25, width: 150, height: 44))
            button.setTitle(names[i], for: UIControlState.normal)
            button.backgroundColor = UIColor.RGBA(r: 245, g: 116, b: 69, a: 1)
            button.setTitleColor(UIColor.white, for: UIControlState.normal)
            button.layer.cornerRadius = 8
            button.clipsToBounds = true
            button.tag = 100 + i
            button.addTarget(self, action: #selector(customButtonClicked), for: UIControlEvents.touchUpInside)
            view.addSubview(button)
        }
    }
    @objc private func customButtonClicked(_ sender:UIButton) -> Void {
        self.selectedIndex = sender.tag - 100
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
