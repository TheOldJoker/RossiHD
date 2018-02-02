//
//  TemplateCategoriesInfoTableViewController.swift
//  RossiHD
//
//  Created by 赵一欢 on 2018/2/2.
//  Copyright © 2018年 zhaoyihuan. All rights reserved.
//

import UIKit

class TemplateCategoriesInfoTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Shirt"
        self.fixNavgationControllerScreenForAlert()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.initBackButtonWtihTarget(self, action: #selector(pop))
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CELL")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)
        cell.textLabel?.text = "Default Shirt";
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.navigationController?.presentingViewController as! UITabBarController
        vc.selectedIndex = 4
        self.navigationController?.dismiss(animated: true, completion: nil)
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
