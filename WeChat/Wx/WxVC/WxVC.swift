//
//  WxVC.swift
//  WeChat
//
//  Created by User on 16/11/1.
//  Copyright © 2016年 wechat. All rights reserved.
//



import UIKit

class WxVC: BaseTableVC,UITextFieldDelegate{
    
    private lazy var addView: UIView = {
        
        let addView = Define.Xib_InitView("AddView")
        addView.frame = CGRectMake(K_Screen_W-130-3, K_NavBar_H+2, 130, 180)
        
        return addView
    }()
    
    private lazy var blackView: UIView = {
        
        let blackView = UIView()
        blackView.frame = CGRectMake(0, 0, K_Screen_W, K_Screen_H - 64)
        blackView.backgroundColor = UIColor.clearColor()
        return blackView
    }()


    @IBOutlet weak var bageValueLab: UILabel!
    @IBOutlet weak var imv1: UIImageView!
    @IBOutlet weak var imv2: UIImageView!
    @IBOutlet weak var imv3: UIImageView!
    @IBOutlet weak var imv4: UIImageView!
    @IBOutlet weak var imv5: UIImageView!
    @IBOutlet weak var imv6: UIImageView!
    @IBOutlet weak var imv7: UIImageView!
    @IBOutlet weak var imv8: UIImageView!
    @IBOutlet weak var headerView: UIView!
    
    override func viewDidLoad() {
        
        bageValueLab.becomeRound()
        imv1.becomeAngel()
        imv2.becomeAngel()
        imv3.becomeAngel()
        imv4.becomeAngel()
        imv5.becomeAngel()
        imv6.becomeAngel()
        imv7.becomeAngel()
        imv8.becomeAngel()
        self.tableView.tableHeaderView = headerView
        
         //黑色View点击事件
        let tap = UITapGestureRecognizer(target: self, action:#selector(WxVC.tapedBlackView(_:)))
        self.blackView.addGestureRecognizer(tap)
        
        
        //监听添加View的按钮点击：
        for i in 1..<5{
           let  btn = addView.viewWithTag(i) as! UIButton
            btn.addTarget(self, action: #selector(WxVC.clickedAddViewBtns(_:)), forControlEvents: UIControlEvents.TouchUpInside)
            
        }
      
    }
    
    //MARK:点击按钮
    func clickedAddViewBtns(btn:UIButton){
      
        if btn.tag==1{
            
            let wxChooseVC = Define.Storyboard_InitVC("WxChooseVC") as! WxChooseVC
            navigationController?.pushViewController(wxChooseVC, animated: true)
        
        }else if btn.tag==2{
            
            let addFriendVC = Define.Storyboard_InitVC("AddFriendVC") as! AddFriendVC
            navigationController?.pushViewController(addFriendVC, animated: true)
        }else if btn.tag==3{
          
            let sweepVC = Define.Storyboard_InitVC("SweepVC") as! SweepVC
            navigationController?.pushViewController(sweepVC, animated: true)
        
        }else{
            let wxPayVC = Define.Storyboard_InitVC("WxPayVC") as! WxPayVC
            navigationController?.pushViewController(wxPayVC, animated: true)
            
        }
    }
    
  // MARK:点击加号
    @IBAction func addAction(sender: UIBarButtonItem) {
        
         self.addView.hidden = false
        self.blackView.hidden = false
        self.view.addSubview(blackView)
        K_Window!.addSubview(self.addView)
       
    }
    
// MARK:触摸黑色View
    func tapedBlackView(tap:UITapGestureRecognizer){
        self.addView.hidden = true
        self.blackView.hidden = true
        view.endEditing(true)
    }
    
    
    
// MARK:跳转到聊天界面
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        view.endEditing(true)

        
        let wxChatVC = Define.Storyboard_InitVC("WxChatVC") as! WxChatVC
        navigationController?.pushViewController(wxChatVC, animated: true)
    }

// MARK:切换界面
    override func viewWillDisappear(animated: Bool) {
        addView.removeFromSuperview()
        blackView.removeFromSuperview()
    }
    
    
//   MARK:开始编辑
    func textFieldDidBeginEditing(textField: UITextField) {
        
        self.blackView.hidden = false
        self.view.addSubview(blackView)
        
    }
    
    //   MARK:结束编辑
    func textFieldDidEndEditing(textField: UITextField) {
         blackView.hidden = true
    }
}



