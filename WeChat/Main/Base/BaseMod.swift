//
//  BaseMod.swift
//  SwiftProject
//
//  Created by User on 16/6/23.
//  Copyright © 2016年 XFW. All rights reserved.
//

import UIKit

class BaseMod: NSObject {
    
    /*
    1.不能有系统关键字，有的话需要做修改
    2.需要对NSNumber做判断转化成NSString
    3.如果后台多给你些参数，要重写setValueForUndefineKey
    4.后台给的是NSNUll类型，判断后赋予空值
    */
    
    override func setValue(value: AnyObject?, forKey key: String) {
        
        if value == nil {     //空值类型情况
          
            self.setValue("", forKey: key)
            
        }else if (value is NSNumber) { //NSNumber类型情况：
            
             self.setValue(String(value!), forKey: key)
            
        }else{ //String类型情况：
            
         super.setValue(value!, forKey: key)
        }
        
       
    }

    
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
//        super.setValue(value, forUndefinedKey: key)
    }
    
}
