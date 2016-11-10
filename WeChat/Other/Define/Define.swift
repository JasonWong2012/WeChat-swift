//
//  Define.swift
//  SwiftProject
//
//  Created by User on 16/6/22.
//  Copyright © 2016年 XFW. All rights reserved.
//

import UIKit



//MARK: - 宏

///全局统一颜色：
let K_RedColor = Define.RGBColor(247, G: 51, B: 70, A: 1)
let K_BgViewColor = Define.RGBColor(244, G: 244, B: 244, A: 1)
let K_NavBarColor = Define.RGBColor(0, G: 0, B: 0, A: 1)
let K_GrayColor = Define.RGBColor(85, G:85, B:85, A:1)
let K_BlueColor  = Define.RGBColor(0, G:122, B:255, A:1)
let K_YellowColor  = Define.RGBColor(133, G:87, B:24, A:1)
let K_GreenColor  = Define.RGBColor(75, G:198, B:75, A:1)


///缩写
let K_Window = UIApplication.sharedApplication().keyWindow
let K_Net_1  = "http://112.74.128.53:9600/APP_Action.ashx?" //接口前缀
let K_Image_Url = "http://112.74.128.53:9997/"                //图片的前缀
let K_NotiCenter = NSNotificationCenter.defaultCenter()


//用户数据
let K_Udf = NSUserDefaults.standardUserDefaults()
let K_Uid = (K_Udf.objectForKey("uid") == nil) ? "" : (K_Udf.objectForKey("uid") as! String)
let K_Phone = (K_Udf.objectForKey("phone") == nil) ? "" : (K_Udf.objectForKey("phone") as! String)
let K_Pwd = (K_Udf.objectForKey("pwd") == nil) ? "" : (K_Udf.objectForKey("pwd") as! String)
let K_Icon = K_Udf.objectForKey("icon")
 



///屏幕高度判断
let K_I4 = UIScreen.mainScreen().bounds.size.height == 480
let K_I5 = UIScreen.mainScreen().bounds.size.height == 568
let K_I6 = UIScreen.mainScreen().bounds.size.height == 667
let K_I7 = UIScreen.mainScreen().bounds.size.height == 736

///系统版本判断
 let systemVersion =  NSString(string: UIDevice.currentDevice().systemVersion).doubleValue
let K_IOS6 = (systemVersion < 7.0)
let K_IOS7 = (systemVersion >= 7.0)
let K_IOS8 = (systemVersion >= 8.0)
let K_IOS9 = (systemVersion >= 9.0)


/// 屏幕宽高
let K_Screen_W = UIScreen.mainScreen().bounds.size.width
let K_Screen_H = UIScreen.mainScreen().bounds.size.height

//导航栏最大Y值
let K_NavBar_H : CGFloat = (K_IOS7 ? 64 : 44)
//底部栏高度
let K_BottomBar_H : CGFloat = 44

//字体
let K_Font10 = UIFont.systemFontOfSize(10)
let K_Font11 = UIFont.systemFontOfSize(11)
let K_Font12 = UIFont.systemFontOfSize(12)
let K_Font13 = UIFont.systemFontOfSize(13)
let K_Font14 = UIFont.systemFontOfSize(14)
let K_Font15 = UIFont.systemFontOfSize(15)
let K_Font16 = UIFont.systemFontOfSize(16)
let K_Font17 = UIFont.systemFontOfSize(17)

class Define:NSObject {
    
    ///单例对象
    static let shareDefine = Define()
    
    ///初始化storyBoard控制器
    class  func  Storyboard_InitVC(controllerIdentifie:String) ->UIViewController{
        
        return UIStoryboard(name: "Main", bundle:nil).instantiateViewControllerWithIdentifier(controllerIdentifie)
    }
    
    ///RGB颜色
    class func RGBColor(R:Float,G:Float,B:Float,A:Float) ->UIColor{

        return UIColor(colorLiteralRed: R/255.0, green: G/255.0, blue: B/255.0, alpha: A)
    }
    
    ///初始化xib的View
    class func Xib_InitView(nibName:String) ->UIView{
        
       return  NSBundle.mainBundle().loadNibNamed(nibName, owner: nil, options: nil).last as! UIView
    }
    
    ///初始化xib的cell
    class func Xib_InitCell(tableView:UITableView,nibName:String,cellIdentifie:String){
       
       let nib =  UINib(nibName: nibName, bundle: nil)
        return tableView.registerNib(nib, forCellReuseIdentifier:cellIdentifie)
    }
    
    ///请求成功
    class func reqSuccess(dic:[String: AnyObject]?) ->Bool{
        
        guard let obj = dic else{
            return false
        }
        
       guard let sign = obj["sign"] as? Int else{
        return false
        }
        
        guard let signIOS = obj["signIOS"] as? Int else{
            return false
        }
        
        return  (sign == 1 || signIOS == 1) ? true : false
    }
    
    ///请求异常
    class func reqAbnormal(dic:[String: AnyObject]?) ->Bool{
        
        guard let obj = dic else{
            return false
        }
        
        guard let sign = obj["sign"] as? Int else{
            return false
        }
        
        guard let signIOS = obj["signIOS"] as? Int else{
            return false
        }
        
        return  (sign == 2 || signIOS == 2) ? true : false

        
    }
    
}




