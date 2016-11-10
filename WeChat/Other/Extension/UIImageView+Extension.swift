//
//  UIImageView+Extension.swift
//  SwiftProject
//
//  Created by User on 16/8/23.
//  Copyright © 2016年 XFW. All rights reserved.
//

import UIKit

extension UIImageView{
    
    convenience init(frame:CGRect, imageName:String){
        
        self.init()
        self.frame = frame
        self.image = UIImage(named: imageName)
    }
    
    
}