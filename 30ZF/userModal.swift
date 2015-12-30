//
//  userModal.swift
//  BaiduMapDemo
//
//  Created by Bobo on 15/12/3.
//  Copyright © 2015年 益行人-星夜暮晨. All rights reserved.
//

import Foundation


class UserModal: NSObject {
    var users = [SearchResult]()
    var showTimes: Int32 = 1
    
    override init() {
        super.init()
        loadRecords()
    }
    
    func documentDiretory() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        return paths[0]
    }
    
    func dataFilePath() -> String {
        return "\(documentDiretory())/Records.plist"
    }
    
    func saveRecords() {
        let data = NSMutableData()
        let archiver = NSKeyedArchiver(forWritingWithMutableData: data)
        archiver.encodeObject(users, forKey: "Users")
        archiver.encodeInt32(showTimes, forKey: "ShowTimes")
        archiver.finishEncoding()
        data.writeToFile(dataFilePath(), atomically: true)
    }
    
    func loadRecords() {
        let path = dataFilePath()
        
        if NSFileManager.defaultManager().fileExistsAtPath(path) {
            
            if let data = NSData(contentsOfFile: path) {
                let unarchiver = NSKeyedUnarchiver(forReadingWithData: data)
                users = unarchiver.decodeObjectForKey("Users") as! [SearchResult]
                showTimes = unarchiver.decodeInt32ForKey("ShowTimes")
                unarchiver.finishDecoding()
            }
            
        }
        
    }
}