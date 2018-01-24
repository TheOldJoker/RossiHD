//
//  AddCustomerViewController.swift
//  RossiHD
//
//  Created by 赵一欢 on 2018/1/24.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

import UIKit

class AddCustomerViewController: UIViewController {
    var closeButton : UIButton?
    var saveButton : UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black
        let width = SCREEN_WIDTH / 2
        let height = SCREEN_HEIGHT - 100
        self.view.frame = CGRect.init(x: CGFloat((SCREEN_WIDTH - width) / 2), y: CGFloat((SCREEN_HEIGHT - height) / 2), width: width, height: height)
        
        let titleLabel = UILabel.init(frame: CGRect.init(x: CGFloat(0), y: 10, width: width, height: 44))
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.text = "Select Customer"
        titleLabel.font = UIFont.systemFont(ofSize: CGFloat(20), weight: UIFont.Weight(rawValue: 2))
        titleLabel.textColor = UIColor.white
        view.addSubview(titleLabel)
        
        closeButton = self.initNavButtonWithFrame(CGRect.init(x: CGFloat(10), y: CGFloat(10), width: CGFloat(100), height: CGFloat(44)), title: "Close", backgroundColor: UIColor.RGBA(r: Float(245), g: Float(116), b: Float(77), a: 1))
        closeButton?.addTarget(self, action: #selector(self.dismissVC), for: UIControlEvents.touchUpInside)
        self.view.addSubview(closeButton!)
        
        saveButton = self.initNavButtonWithFrame(CGRect.init(x: CGFloat(width - 110), y: CGFloat(10), width: 100, height: 44), title: "+ New", backgroundColor: UIColor.RGBA(r:Float(123) , g: Float(194), b: Float(85), a: 1))
        saveButton?.addTarget(self, action: #selector(self.saveCustomer), for: UIControlEvents.touchUpInside)
        view.addSubview(saveButton!)
    }
    func initNavButtonWithFrame(_ frame:CGRect, title:String, backgroundColor:UIColor) -> UIButton {
        let button = UIButton.initWithTitle(title, titleColor: UIColor.white, frame: frame, backgroundColor: backgroundColor, font: UIFont.systemFont(ofSize: CGFloat(20)))
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        return button
    }
    
    //MARK: - Aciton
    @objc func saveCustomer() -> Void{
        self.view.endEditing(true)
        self.dismiss(animated: true, completion: nil)
    }
    @objc func dismissVC() -> Void {
        self.view.endEditing(true)
        self.dismiss(animated: true, completion: nil)
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
