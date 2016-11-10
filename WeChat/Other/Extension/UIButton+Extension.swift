//
//  UIButton+Extension.swift
//  SwiftProject
//
//  Created by User on 16/8/23.
//  Copyright © 2016年 XFW. All rights reserved.
//

import UIKit

extension UIButton {

    convenience init(frame:CGRect,image:UIImage?,title:String?){
        
        self.init()
        
        self.frame = frame
        setImage(image, forState: UIControlState.Normal)
        setTitle(title, forState: UIControlState.Normal)
        
    }

}
