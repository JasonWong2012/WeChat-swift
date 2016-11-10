//
//  WxChooseVC.swift
//  WeChat
//
//  Created by User on 16/11/2.
//  Copyright © 2016年 wechat. All rights reserved.
//

import UIKit

class WxChooseVC: BaseTableVC {
    
    @IBOutlet weak var headerView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableHeaderView = headerView
        self.navigationItem.rightBarButtonItem?.image = UIImage(named: "")
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        view.endEditing(true)
        
        if indexPath.section==0 && indexPath.row==0 {
           TipTool.showSuccess("开发中...")
        }else if indexPath.section==0 && indexPath.row==1 {
            TipTool.showSuccess("开发中...")
        }
    }

}
