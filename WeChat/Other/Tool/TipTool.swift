//
//  AlertTool.swift
//  SwiftProject
//
//  Created by User on 16/6/23.
//  Copyright © 2016年 XFW. All rights reserved.
//

import UIKit

class TipTool: NSObject {
    
    //单例
    static let shareTipTool = TipTool()
    
    let alert_W : CGFloat = 100
    
    private lazy var alertView: UIView = {
        
        let view : UIView = Define.Xib_InitView("TipView")
        
        return view
    }()
    
}


extension TipTool{
    
    //显示hud
    class func showHud(view:UIView,text:String){
        
        let hud = MBProgressHUD.showHUDAddedTo(view, animated: true)
        hud.labelText = text
    }
    
    //隐藏hud
    class func hidHud(view:UIView){
        
        MBProgressHUD.hideHUDForView(view, animated: true)
    }
}


extension TipTool{

    ///错误提示框
  class func showError(text:String){
    
    if UIImage(named: "0606error") != nil {
        TipTool.addTipView(UIImage(named: "0606error")!, tipText:text)
    }
    
    
    }
    
    
    ///成功提示框
  class func showSuccess(text:String){
    
    if UIImage(named: "0510yes") != nil{
       TipTool.addTipView(UIImage(named: "0510yes")!, tipText: text)
    }
    
}
    
    //控件
  class func addTipView(image:UIImage , tipText:String){
    
    let tipView_W = TipTool.shareTipTool.alert_W
    
    let tipView = TipTool.shareTipTool.alertView
    
        tipView.hidden = false
        K_Window?.addSubview(tipView)
        tipView.frame = CGRectMake((K_Screen_W-tipView_W)/2,(K_Screen_H-tipView_W-K_NavBar_H)/2, tipView_W, tipView_W);
        tipView .becomeAngel()
        
        //提示图片和文字
        let tipImv:UIImageView = tipView.viewWithTag(1) as! UIImageView
        tipImv.image = image
        
        let tipLabel : UILabel = tipView.viewWithTag(2) as! UILabel
        tipLabel.text = tipText;
        
        //2s后消失
        let time = dispatch_time(DISPATCH_TIME_NOW,
                                 Int64(2.0 * Double(NSEC_PER_SEC)))
        
        dispatch_after(time, dispatch_get_main_queue()) {
            tipView.hidden = true
        }
        
        
    }

}
