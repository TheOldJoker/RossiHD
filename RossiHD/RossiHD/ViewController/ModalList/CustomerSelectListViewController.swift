//
//  CustomerSelectListViewController.swift
//  RossiHD
//
//  Created by 赵一欢 on 2018/1/24.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

import UIKit

class CustomerSelectListViewController: UIViewController {
    var mainTable : UITableView?
    var closeButton : UIButton?
    var addNewButton : UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Select Customer"
        let width = SCREEN_WIDTH / 2
        let height = SCREEN_HEIGHT - 100
        self.navBarBackgroundColor(UIColor.black, titleColor: UIColor.white)
        self.fixNavgationControllerScreenWithSize(CGSize.init(width: width, height: height))
        
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.initCloseButtonWtihTarget(self, action: #selector(dismissVC))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.initRightButtonWtihTitle("+ New", backgroundColor: UIColor.RGBA(r:Float(123) , g: Float(194), b: Float(85), a: 1), target: self, action: #selector(addNewCustomer))
        
        mainTable = UITableView.init(frame: CGRect.init(x: CGFloat(0), y: CGFloat(0), width: width, height: height), style: UITableViewStyle.plain)
//        mainTable?.separatorStyle = UITableViewCellSeparatorStyle.none
        mainTable?.showsVerticalScrollIndicator = false
        mainTable?.showsHorizontalScrollIndicator = false
        mainTable?.dataSource = self
        mainTable?.delegate = self
        mainTable?.register(UITableViewCell.self, forCellReuseIdentifier: "S_CELL")
        self.view.addSubview(mainTable!)
        
        
    }
    func initNavButtonWithFrame(_ frame:CGRect, title:String, backgroundColor:UIColor) -> UIButton {
        let button = UIButton.initWithTitle(title, titleColor: UIColor.white, frame: frame, backgroundColor: backgroundColor, font: UIFont.systemFont(ofSize: CGFloat(20)))
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        return button
    }
    //MARK: - Aciton
    @objc func addNewCustomer() -> Void{
        let vc = AddCustomerViewController.init()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc func dismissVC() -> Void {
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
extension CustomerSelectListViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "S_CELL", for: indexPath)
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        cell.textLabel?.text = "Customer + \(indexPath.row)"
        return cell
    }
}
extension CustomerSelectListViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }
}
