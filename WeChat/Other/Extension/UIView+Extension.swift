//
//  UIView+Extension.swift
//  SwiftProject
//
//  Created by User on 16/6/23.
//  Copyright © 2016年 XFW. All rights reserved.
//

import UIKit

extension UIView{
    
    /// x
    var  x:CGFloat{
        
        set{
            var frame = self.frame
            frame.origin.x = x
            self.frame = frame
           }
        
        get{
         return  self.frame.origin.x
        }
    }
    
    
    ///y
    var  y:CGFloat{
      
        set{
            var frame = self.frame
            frame.origin.y = y
            self.frame = frame
        }
        
        get{
           return self.frame.origin.y
        }
        
    }
    
    ///width
    var  width:CGFloat{
        
        set{
            var frame = self.frame
            frame.size.width = width
            self.frame = frame
        }
        
        get{
            return self.frame.size.width
        }
    }
    
    ///height
    var  height:CGFloat{
        
        set{
            var frame = self.frame
            frame.size.height = height
            self.frame = frame
        }
        
        get{
            return self.frame.size.height
        }
    }
    
    
    ///size
    var  size:CGSize{
        
        set{
            var frame = self.frame
            frame.size = size
            self.frame = frame
        }
        
        get{
             return self.frame.size
        }
    }
    
    
    ///centerX
    var  centerX:CGFloat{
        
        set{
            var center = self.center
            center.x = centerX
            self.center = center
        }
        
        get{
            return self.center.x
        }
    }

    
    ///centerY
    var  centerY:CGFloat{
        
        set{
            var center = self.center
            center.y = centerY
            self.center = center

        }
        
        get{
            return self.center.y
        }
    }
    
   
    ///控件变矩形
    func becomeAngel(){
        
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 5
    }
    
    ///控件变矩形且有边框
    func becomeAngel(color:UIColor){
        
        self.layer.borderWidth = 0.5;
        self.layer.borderColor = color.CGColor;
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 5
    }
    
    /// 控件变圆
    func becomeRound(){
        
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.width*0.5
    }
    
    /// 控件变圆且有边框
    func becomeRound(color:UIColor){
        
        self.layer.borderWidth = 0.5;
        self.layer.borderColor = color.CGColor
        self.layer.masksToBounds = true
        self.layer.cornerRadius = self.width*0.5
    }
    
    
}