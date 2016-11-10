//
//  UILabel+Extension.swift
//  SwiftProject
//
//  Created by User on 16/8/23.
//  Copyright © 2016年 XFW. All rights reserved.
//

import UIKit

extension UILabel{
    
    convenience init(frame:CGRect,text:String?,textColor:UIColor? = UIColor.lightGrayColor()){
        
        self.init()
        self.frame = frame
        self.text = text
        self.textColor = textColor
     }
}