//
//  BaseVC.swift
//  SwiftProject
//
//  Created by User on 16/6/22.
//  Copyright © 2016年 XFW. All rights reserved.
//

import UIKit

class BaseVC: UIViewController{

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       automaticallyAdjustsScrollViewInsets = false
       view.backgroundColor = K_BgViewColor
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //默认显示父类和子类控制器的导航栏
        navigationController?.navigationBarHidden = false
    }
    

}
