//
//  AddFriendVC.swift
//  WeChat
//
//  Created by User on 16/11/1.
//  Copyright © 2016年 wechat. All rights reserved.
//

import UIKit

class AddFriendVC: BaseTableVC {

    @IBOutlet weak var headerView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableHeaderView = headerView
         self.navigationItem.rightBarButtonItem?.image = UIImage(named: "")
    }

  

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        view.endEditing(true)

            TipTool.showSuccess("开发中...")
    }
}
