//
//  String+Extension.swift
//  Weibo
//
//  Created by xiaomage on 15/10/22.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

import UIKit

extension String
{
    func cache() -> String
    {
        let cachePath =  NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.CachesDirectory, NSSearchPathDomainMask.UserDomainMask, true).last!
        return (cachePath as NSString).stringByAppendingPathComponent((self as NSString).pathComponents.last!)
    }
    
    func doc() -> String
    {
        let docPath =  NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last!
        return (docPath as NSString).stringByAppendingPathComponent((self as NSString).pathComponents.last!)
    }
    func tmp() -> String
    {
        let tmpPath =  NSTemporaryDirectory()
        return (tmpPath as NSString).stringByAppendingPathComponent((self as NSString).pathComponents.last!)
    }
    
    
    func md5() ->String!{
        
        let str = self.cStringUsingEncoding(NSUTF8StringEncoding)
        let strLen = CUnsignedInt(self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))
        let digestLen = Int(CC_MD5_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.alloc(digestLen)
        CC_MD5(str!, strLen, result)
        let hash = NSMutableString()
        for i in 0 ..< digestLen {
            hash.appendFormat("%02x", result[i])
        }
        result.destroy()
        return String(format: hash as String)
    }
    
}

