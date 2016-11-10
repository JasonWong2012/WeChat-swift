//
//  WalletVC.swift
//  WeChat
//
//  Created by User on 16/11/3.
//  Copyright © 2016年 wechat. All rights reserved.
//

import UIKit

class WalletVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
 
    @IBAction func tapedImv(sender: UITapGestureRecognizer) {
        
        TipTool.showSuccess("开发中...")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        TipTool.showSuccess("开发中...")

    }

}
