//
//  PersonalMsgVC.swift
//  WeChat
//
//  Created by User on 16/11/3.
//  Copyright © 2016年 wechat. All rights reserved.
//

import UIKit

class PersonalMsgVC: BaseTableVC {
 
    override func viewDidLoad() {
        super.viewDidLoad()

       tableView.tableHeaderView = UIView(frame: CGRectMake(0, 0, 0, 12))
    }

    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        TipTool.showSuccess("开发中...")
    }
}
