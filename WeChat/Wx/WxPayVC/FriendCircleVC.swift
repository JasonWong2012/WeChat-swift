//
//  FriendCircleVC.swift
//  WeChat
//
//  Created by User on 16/11/2.
//  Copyright © 2016年 wechat. All rights reserved.
//

import UIKit

class FriendCircleVC: BaseTableVC {

    @IBOutlet weak var headerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
tableView.tableHeaderView = headerView
        
    }

    //MARK:评论事件
    @IBAction func commentAction(sender: UIButton) {
        
        TipTool.showSuccess("开发中...")
    }


}
