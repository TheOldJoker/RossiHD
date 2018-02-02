//
//  MainViewController.swift
//  RossiHD
//
//  Created by 赵一欢 on 2018/1/22.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet var mainTableView: UITableView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    // MARK: - Action
    
    @IBAction func EditWorkorderAction(_ sender: UIButton) {
    }
    @IBAction func DeleteAction(_ sender: UIButton) {
    }
    @IBAction func AmendAction(_ sender: UIButton) {
    }
    @IBAction func AddToInVoiceAction(_ sender: UIButton) {
    }
    @IBAction func addNewCustomerAction(_ sender: UIButton) {
        
        let vc = CustomerSelectListViewController.init()
        let nav = UINavigationController.init(rootViewController: vc)
        self.customPresentVC(nav, animation: YHModaAnimationType.alpha, showBlackBackgroud: true, canTapDismiss: false)
    }
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
        self.view.endEditing(true)
        self.mainTableView.tableFooterView = UIView.init()
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//            self.presentLoginViewController()
//        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
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
// MARK: - Extension
extension MainViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MAIN_CUSTOMER_CELL", for: indexPath) as! MainCustomerCardTableViewCell
        return cell;
    }
}
extension MainViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(114)
    }
}
