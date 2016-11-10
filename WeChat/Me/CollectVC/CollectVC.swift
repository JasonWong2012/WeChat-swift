//
//  CollectVC.swift
//  WeChat
//
//  Created by User on 16/11/3.
//  Copyright © 2016年 wechat. All rights reserved.
//

import UIKit

class CollectVC: BaseTableVC {
    @IBOutlet weak var imv1: UIImageView!
    @IBOutlet weak var imv2: UIImageView!
    @IBOutlet weak var imv3: UIImageView!
    @IBOutlet weak var imv4: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        imv1.becomeRound()
        imv2.becomeRound()
        imv3.becomeRound()
        imv4.becomeRound()
    }

 

}
