//
//  TabbarVC.swift
//  SwiftProject
//
//  Created by User on 16/6/22.
//  Copyright © 2016年 XFW. All rights reserved.
//

import UIKit

class TabbarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1.选中按钮
        selectedIndex = 0
        
        //2.item文字颜色
        tabBar.tintColor = K_GreenColor
  
    }
}
