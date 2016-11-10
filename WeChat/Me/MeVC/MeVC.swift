//
//  MeVC.swift
//  WeChat
//
//  Created by User on 16/11/2.
//  Copyright © 2016年 wechat. All rights reserved.
//

import UIKit

class MeVC: BaseTableVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableHeaderView = UIView(frame: CGRectMake(0, 0, 0, 12))
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if indexPath.section==0 {
            
            
            let personalMsgVC = Define.Storyboard_InitVC("PersonalMsgVC") as! PersonalMsgVC
            navigationController?.pushViewController(personalMsgVC, animated: true)
            
            
        }else if indexPath.section==1 && indexPath.row==0{ //相册
            
            let friendCircleVC = Define.Storyboard_InitVC("FriendCircleVC") as! FriendCircleVC
            friendCircleVC.title = "相册"
            navigationController?.pushViewController(friendCircleVC, animated: true)
        }else if indexPath.section==1 && indexPath.row==1{  //收藏
            
            let collectVC = Define.Storyboard_InitVC("CollectVC") as! CollectVC
            navigationController?.pushViewController(collectVC, animated: true)

        }else if indexPath.section==1 && indexPath.row==2{  //钱包
            
            let walletVC = Define.Storyboard_InitVC("WalletVC") as! WalletVC
            navigationController?.pushViewController(walletVC, animated: true)
            
        }else if indexPath.section==1 && indexPath.row==3{  //卡包
            
            let cardVC = Define.Storyboard_InitVC("CardVC") as! CardVC
            navigationController?.pushViewController(cardVC, animated: true)
            
        }else if indexPath.section==2 && indexPath.row==0{  //表情
            
            let faceVC = Define.Storyboard_InitVC("FaceVC") as! FaceVC
            navigationController?.pushViewController(faceVC, animated: true)
            
        }else if indexPath.section==3 && indexPath.row==0{  //设置
            
            let setVC = Define.Storyboard_InitVC("SetVC") as! SetVC
            navigationController?.pushViewController(setVC, animated: true)
            
        }
       
    }

}
