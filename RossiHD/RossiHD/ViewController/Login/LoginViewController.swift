//
//  LoginViewController.swift
//  Rossi
//
//  Created by 赵一欢 on 2018/1/19.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var selectResLabel: UILabel!
    @IBOutlet var selectBackgroudView: LoginTextFieldBackgroundView!
    
    @IBOutlet var selectButton: LoginSelectButton!
    @IBOutlet var passWordCenterY: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginButton.tempBackgroudColor = UIColor.orange
        self.loginButton.setButtonCanClicked(can: false)
        self.view.layer.contents = UIImage.init(named: "login_bkgrd")?.cgImage
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow(note:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHidden(note:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    @objc func keyboardWillShow(note:NSNotification)-> Void {
        let userInfo = note.userInfo!
        let duration = (userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber).doubleValue
        
        UIView.animate(withDuration: duration, animations: {
            self.passWordCenterY.constant -= 44;
        }) { (true) in
            self.view.setNeedsLayout()
            self.view.layoutIfNeeded()
        }
    }
    @objc func keyboardWillHidden(note:NSNotification)-> Void {
        let userInfo = note.userInfo!
        let duration = (userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber).doubleValue
        UIView.animate(withDuration: duration, animations: {
            self.passWordCenterY.constant = 0;
        }) { (true) in
            self.view.setNeedsLayout()
            self.view.layoutIfNeeded()
        }
    }
    @IBAction func loginApp(_ sender: UIButton) {
        sender.setButtonCanClicked(can: false)
        view.endEditing(true)
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//            self.dismiss(animated: true, completion: {
//
//            })
//        }
        if usernameTextField.text?.length() == 0 {
            return
        }
        if passwordTextField.text?.length() == 0 {
            return
        }
        loginRossiWithUsername(usernameTextField.text!, password: passwordTextField.text!, storeId: "1", successCallback: { (json) in
            YHLog(message: json)
        }) { (error) in
            YHLog(message: error)
        }
    }
    @IBAction func LoginSelectButtonClicked(_ sender: LoginSelectButton) {
        self.view.endEditing(true)
        sender.isSelected = !sender.isSelected
        sender.showSelectTrigonLayer(show: sender.isSelected)
        
        let loginSelectViewController = LoginSelectViewController.init()
        loginSelectViewController.view.frame = CGRect.init(x: (SCREEN_WIDTH - self.selectBackgroudView.frame.size.width) / 2, y: self.selectBackgroudView.frame.origin.y + self.selectBackgroudView.frame.size.height, width: self.selectBackgroudView.frame.size.width, height: self.selectBackgroudView.frame.size.width)
        self.customPresentVC(loginSelectViewController, animation: YHModaAnimationType.alpha, showBlackBackgroud: false, canTapDismiss: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
extension LoginViewController : UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let nameString = self.usernameTextField.text! as NSString
        let passWordString = self.passwordTextField.text! as NSString
        
        if nameString.length > 0 && passWordString.length > 0 {
            self.loginButton.setButtonCanClicked(can: true)
        }
        else{
            self.loginButton.setButtonCanClicked(can: false)
        }
        return true
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        self.loginButton.setButtonCanClicked(can: false)
        return true
    }
}
