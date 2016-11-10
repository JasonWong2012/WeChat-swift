//
//  WxChatVC.swift
//  WeChat
//
//  Created by User on 16/11/1.
//  Copyright © 2016年 wechat. All rights reserved.
//

import UIKit

class WxChatVC: BaseTableVC {
    
    private lazy var bar: UIView = {
        
        let bar = Define.Xib_InitView("WxChatBar")
        bar.frame = CGRectMake(0, K_Screen_H-50, K_Screen_W, 50)
        
        return bar
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        K_Window?.addSubview(bar)
        
        let tap = UITapGestureRecognizer(target: self, action:#selector(WxChatVC.tapBar(_:)))
        bar.addGestureRecognizer(tap)
        
    }
    
    //MARK:触摸bar
    func tapBar(tap:UITapGestureRecognizer){
    TipTool.showSuccess("开发中...")
    }
    
    //MARK:移除bar
    override func viewWillDisappear(animated: Bool) {
        bar.removeFromSuperview()
    }

}
