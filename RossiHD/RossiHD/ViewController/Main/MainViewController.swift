//
//  MainViewController.swift
//  RossiHD
//
//  Created by 赵一欢 on 2018/1/22.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    //MARK - Action
    
    @IBAction func WorkorderAction(_ sender: UIButton) {
    }
    @IBAction func POSAciton(_ sender: UIButton) {
    }
    @IBAction func InventoryAction(_ sender: UIButton) {
    }
    @IBAction func Customers(_ sender: UIButton) {
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//            self.presentLoginViewController()
//        }
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        self.showSystemAlertTitle("提示", message: "正在操作", actionTitleArray: ["yes","no"], colorTitle: nil, withAction: { (i) in
//
//        }, preferredStyle: UIAlertControllerStyle.alert)
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
