//
//  ContactVC.swift
//  WeChat
//
//  Created by User on 16/11/1.
//  Copyright © 2016年 wechat. All rights reserved.
//

import UIKit

class ContactVC: BaseTableVC {
    
    @IBOutlet weak var headerView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

      tableView.tableHeaderView = headerView
    }
    
    //MARK:添加好友
    @IBAction func addFriend(sender: UIBarButtonItem) {
        
        let addFriendVC = Define.Storyboard_InitVC("AddFriendVC") as! AddFriendVC
        navigationController?.pushViewController(addFriendVC, animated: true)
        
    }
    

    
    //    跳转到聊天界面
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        view.endEditing(true)

        
        let wxChatVC = Define.Storyboard_InitVC("WxChatVC") as! WxChatVC
        navigationController?.pushViewController(wxChatVC, animated: true)
    }
    
    override func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
    return ["🔍","A","B","C","D","#"]
        
    }
}
