//
//  WxPayVC.swift
//  WeChat
//
//  Created by User on 16/11/2.
//  Copyright © 2016年 wechat. All rights reserved.
//

import UIKit

class WxPayVC: BaseTableVC {

    @IBOutlet weak var headerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableHeaderView = headerView
        
 
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        TipTool.showSuccess("开发中...")
    }

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        
        return (K_Screen_H - K_NavBar_H - headerView.height - 40) * 0.5
    }

}
