//
//  AddCustomerViewController.swift
//  RossiHD
//
//  Created by 赵一欢 on 2018/1/24.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

import UIKit

class AddCustomerViewController: UIViewController {
    var nameTextField : UITextField?
    var mobileTextField : UITextField?
    var emailTextField : UITextField?
    var remarksTextView : UITextView?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Customer Details"
        self.view.backgroundColor = UIColor.white
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.initBackButtonWtihTarget(self, action: #selector(pop))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.initRightButtonWtihTitle("+ New", backgroundColor: UIColor.RGBA(r:Float(123) , g: Float(194), b: Float(85), a: 1), target: self, action: #selector(saveCustomer))
        self.fixNavgationControllerScreenForAlert()
        let textFieldWidth = min(400, self.view.frame.size.width - 120)
        
        nameTextField = self.initTextFieldWithFrame(CGRect.init(x: (self.view.frame.size.width - textFieldWidth) / 2, y: 20 + 64, width: textFieldWidth, height: 44), placeholder: "Name")
        let nameLayerView = self.initTextFieldLayerViewWithFrame((nameTextField?.frame)!)
        view.addSubview(nameLayerView)
        view.addSubview(nameTextField!)
        
        mobileTextField = self.initTextFieldWithFrame(CGRect.init(x: (self.view.frame.size.width - textFieldWidth) / 2, y: 74 + 64, width: textFieldWidth, height: 44), placeholder: "Mobile")
        let mobileLayerView = self.initTextFieldLayerViewWithFrame((mobileTextField?.frame)!)
        view.addSubview(mobileLayerView)
        view.addSubview(mobileTextField!)
        
        emailTextField = self.initTextFieldWithFrame(CGRect.init(x: (self.view.frame.size.width - textFieldWidth) / 2, y: 74 + 54 + 64, width: textFieldWidth, height: 44), placeholder: "email")
        let emailLayerView = self.initTextFieldLayerViewWithFrame((emailTextField?.frame)!)
        view.addSubview(emailLayerView)
        view.addSubview(emailTextField!)
        
        remarksTextView = UITextView.init(frame: CGRect.init(x: (self.view.frame.size.width - textFieldWidth - 10) / 2, y: 74 + 64 + 54 * 2, width: textFieldWidth + 10, height: 4 * 44))
        remarksTextView?.textAlignment = NSTextAlignment.center
        remarksTextView?.layer.cornerRadius = 10
        remarksTextView?.layer.borderColor = UIColor.RGBA(r: 211, g: 120, b: 81, a: 1).cgColor
        remarksTextView?.font = UIFont.systemFont(ofSize: CGFloat(17))
        remarksTextView?.tintColor = UIColor.RGBA(r: 211, g: 120, b: 81, a: 1)
        remarksTextView?.layer.borderWidth = 2
        remarksTextView?.text = "Remarks";
        remarksTextView?.delegate = self;
        remarksTextView?.textColor = UIColor.RGBA(r: 207, g: 207, b: 207, a: 1)
        view.addSubview(remarksTextView!)
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
    @objc func closeVC() -> Void {
        self.view.endEditing(true)
        self.navigationController?.popViewController(animated: true)
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
