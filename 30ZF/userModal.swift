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
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        return paths[0]
    }
    
    func dataFilePath() -> String {
        return "\(documentDiretory())/Records.plist"
    }
    
    func saveRecords() {
        let data = NSMutableData()
        let archiver = NSKeyedArchiver(forWritingWith: data)
        archiver.encode(users, forKey: "Users")
        archiver.encode(showTimes, forKey: "ShowTimes")
        archiver.finishEncoding()
        data.write(toFile: dataFilePath(), atomically: true)
    }
    
    func loadRecords() {
        let path = dataFilePath()
        
        if FileManager.default.fileExists(atPath: path) {
            
            if let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
                let unarchiver = NSKeyedUnarchiver(forReadingWith: data)
                users = unarchiver.decodeObject(forKey: "Users") as! [SearchResult]
                showTimes = unarchiver.decodeInt32(forKey: "ShowTimes")
                unarchiver.finishDecoding()
            }
            
        }
        
    }
}
