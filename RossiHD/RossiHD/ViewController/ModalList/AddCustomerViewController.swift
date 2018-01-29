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
    var whiteView : UIView?
    var nameTextField : UITextField?
    var mobileTextField : UITextField?
    var emailTextField : UITextField?
    var remarksTextView : UITextView?
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
        
        whiteView = UIView.init(frame: CGRect.init(x: 0, y: 64, width: self.view.bounds.size.width, height: self.view.bounds.size.height - 64))
        whiteView?.backgroundColor = UIColor.white
        view.addSubview(whiteView!)
        
        let textFieldWidth = min(400, self.view.bounds.size.width - 120)
        
        nameTextField = self.initTextFieldWithFrame(CGRect.init(x: (self.view.bounds.size.width - textFieldWidth) / 2, y: 20, width: textFieldWidth, height: 44), placeholder: "Name")
        let nameLayerView = self.initTextFieldLayerViewWithFrame((nameTextField?.frame)!)
        whiteView?.addSubview(nameLayerView)
        whiteView?.addSubview(nameTextField!)
        
        mobileTextField = self.initTextFieldWithFrame(CGRect.init(x: (self.view.bounds.size.width - textFieldWidth) / 2, y: 74, width: textFieldWidth, height: 44), placeholder: "Mobile")
        let mobileLayerView = self.initTextFieldLayerViewWithFrame((mobileTextField?.frame)!)
        whiteView?.addSubview(mobileLayerView)
        whiteView?.addSubview(mobileTextField!)
        
        emailTextField = self.initTextFieldWithFrame(CGRect.init(x: (self.view.bounds.size.width - textFieldWidth) / 2, y: 74 + 54, width: textFieldWidth, height: 44), placeholder: "email")
        let emailLayerView = self.initTextFieldLayerViewWithFrame((emailTextField?.frame)!)
        whiteView?.addSubview(emailLayerView)
        whiteView?.addSubview(emailTextField!)
        
        remarksTextView = UITextView.init(frame: CGRect.init(x: (self.view.bounds.size.width - textFieldWidth - 10) / 2, y: 74 + 54 * 2, width: textFieldWidth + 10, height: 4 * 44))
        remarksTextView?.textAlignment = NSTextAlignment.center
        remarksTextView?.layer.cornerRadius = 10
        remarksTextView?.layer.borderColor = UIColor.RGBA(r: 211, g: 120, b: 81, a: 1).cgColor
        remarksTextView?.font = UIFont.systemFont(ofSize: CGFloat(17))
        remarksTextView?.tintColor = UIColor.RGBA(r: 211, g: 120, b: 81, a: 1)
        remarksTextView?.layer.borderWidth = 2
        remarksTextView?.text = "Remarks";
        remarksTextView?.delegate = self;
        remarksTextView?.textColor = UIColor.RGBA(r: 207, g: 207, b: 207, a: 1)
        whiteView?.addSubview(remarksTextView!)
    }
    func initNavButtonWithFrame(_ frame:CGRect, title:String, backgroundColor:UIColor) -> UIButton {
        let button = UIButton.initWithTitle(title, titleColor: UIColor.white, frame: frame, backgroundColor: backgroundColor, font: UIFont.systemFont(ofSize: CGFloat(20)))
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        return button
    }
    func initTextFieldWithFrame(_ frame:CGRect, placeholder:String) -> UITextField {
        let textField = UITextField.init(frame:frame)
        textField.placeholder = placeholder
        textField.tintColor = UIColor.RGBA(r: 211, g: 120, b: 81, a: 1)
        textField.textAlignment = NSTextAlignment.center
        textField.delegate = self
        textField.textColor = UIColor.RGBA(r: 211, g: 120, b: 81, a: 1)
        let matrix = CGAffineTransform.init(a: 1, b: 0, c: CGFloat(tanf(Float(-15 * Double.pi / 180))), d: 1, tx: 0, ty: 0)
        textField.transform = matrix;
        return textField
    }
    
    func initTextFieldLayerViewWithFrame(_ frame:CGRect) -> UIView {
        let view = UIView.init(frame: frame)
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.RGBA(r: 211, g: 120, b: 81, a: 1).cgColor
        return view
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
extension AddCustomerViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}
extension AddCustomerViewController : UITextViewDelegate {
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.count < 1 {
            textView.textAlignment = NSTextAlignment.center
            textView.text = "Remarks"
            textView.textColor = UIColor.RGBA(r: 207, g: 207, b: 207, a: 1)
        }
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "Remarks" {
            textView.text = ""
            textView.textColor = UIColor.RGBA(r: 211, g: 120, b: 81, a: 1)
            textView.textAlignment = NSTextAlignment.center
        }
    }
}
