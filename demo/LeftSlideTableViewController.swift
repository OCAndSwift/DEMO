//
//  LeftSlideTableViewController.swift
//  demo
//
//  Created by Caoby on 2018/4/18.
//  Copyright © 2018年 Caoby. All rights reserved.
//

import UIKit

class LeftSlideTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init()
        cell.textLabel?.text = "\(indexPath.row)\(indexPath.row)\(indexPath.row)\(indexPath.row)\(indexPath.row)"
        return cell
    }


}
