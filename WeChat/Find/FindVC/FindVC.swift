//
//  FindVC.swift
//  WeChat
//
//  Created by User on 16/11/2.
//  Copyright © 2016年 wechat. All rights reserved.
//

import UIKit

class FindVC: BaseTableVC {
    
    
    @IBOutlet weak var badeValue: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

         tableView.tableHeaderView = UIView(frame: CGRectMake(0, 0, 0, 12))
        badeValue.becomeRound()
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if indexPath.section==0 && indexPath.row==0{
            
          let friendCircleVC = Define.Storyboard_InitVC("FriendCircleVC") as! FriendCircleVC
            friendCircleVC.title = "朋友圈"
            navigationController?.pushViewController(friendCircleVC, animated: true)
        }else if indexPath.section==1 && indexPath.row==0{ //扫一扫
            
            let sweepVC = Define.Storyboard_InitVC("SweepVC") as! SweepVC
            navigationController?.pushViewController(sweepVC, animated: true)
        
        }else if indexPath.section==1 && indexPath.row==1{ //摇一摇
            
            let shakeVC = Define.Storyboard_InitVC("ShakeVC") as! ShakeVC
            navigationController?.pushViewController(shakeVC, animated: true)
        
        }else if indexPath.section==2 && indexPath.row==0{ //附近的人
            
            let nearVC = Define.Storyboard_InitVC("NearVC") as! NearVC
           navigationController?.pushViewController(nearVC, animated: true)
            
        }else if indexPath.section==2 && indexPath.row==1{ //漂流瓶
            
            let floatVC = Define.Storyboard_InitVC("FloatVC") as! FloatVC
            navigationController?.pushViewController(floatVC, animated: true)
            
        }else if indexPath.section==3 && indexPath.row==0{ //购物
            
            let shopVC = Define.Storyboard_InitVC("ShopVC") as! ShopVC
            navigationController?.pushViewController(shopVC, animated: true)
            
        }else if indexPath.section==3 && indexPath.row==1{ //游戏
            
            let gameVC = Define.Storyboard_InitVC("GameVC") as! GameVC
            navigationController?.pushViewController(gameVC, animated: true)
            
        }
    }

}
