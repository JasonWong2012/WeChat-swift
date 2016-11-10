//
//  GlobalTool.swift
//  SwiftProject
//
//  Created by User on 16/6/24.
//  Copyright © 2016年 XFW. All rights reserved.
//

import UIKit


class GlobalTool: NSObject {
    
    ///单例
    static let shareGlobalTool = GlobalTool()
 
}


extension GlobalTool{
    
    ///播放音乐
    class func playSoundWithFileName(fileName : String){
        
        //1.获得音效文件的全路径
        let url = NSBundle.mainBundle().URLForResource(fileName, withExtension: nil)
        
        //2.加载音效文件，创建音效ID（SoundID,一个ID对应一个音效文件）
       var soundID : SystemSoundID = 0
        AudioServicesCreateSystemSoundID(url!, &soundID)
        
        //3.播放音效文件
        //下面的两个函数都可以用来播放音效文件，第一个函数伴随有震动效果
        AudioServicesPlayAlertSound(soundID)
        
    }
}