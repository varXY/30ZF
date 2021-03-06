//
//  SearchResult.swift
//  StoreSearch
//
//  Created by 文川术 on 15/8/8.
//  Copyright (c) 2015年 xiaoyao. All rights reserved.
//

import Foundation


func < (lhs: SearchResult, rhs: SearchResult) -> Bool {
	return lhs.name.localizedStandardCompare(rhs.name) == NSComparisonResult.OrderedAscending
}

class SearchResult: NSObject, NSCoding {
	var username = ""
	var name = ""
	var mobile = ""
	var image = ""
	var storeURL = ""
	var obd_status = ""
	var huanxinid = ""
	var chexing = ""
	var groupid = ""
    var me = ""
    var typename = ""
    var distance = ""
    var longitude = ""
    var latitude = ""
    var friends = [String]()
    
    override init() {
        super.init()
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(username, forKey: "Username")
        aCoder.encodeObject(name, forKey: "Name")
        aCoder.encodeObject(mobile, forKey: "Mobile")
        aCoder.encodeObject(image, forKey: "Image")
        aCoder.encodeObject(storeURL, forKey: "StoreURL")
        aCoder.encodeObject(obd_status, forKey: "Obd_status")
        aCoder.encodeObject(huanxinid, forKey: "Huanxinid")
        aCoder.encodeObject(chexing, forKey: "Chexing")
        aCoder.encodeObject(groupid, forKey: "Groupid")
        aCoder.encodeObject(me, forKey: "Me")
        aCoder.encodeObject(typename, forKey: "Typename")
        aCoder.encodeObject(distance, forKey: "Distance")
        aCoder.encodeObject(longitude, forKey: "Longitude")
        aCoder.encodeObject(latitude, forKey: "Latitude")
        aCoder.encodeObject(friends, forKey: "Friends")
    }
    
    required init?(coder aDecoder: NSCoder) {
        username = aDecoder.decodeObjectForKey("Username") as! String
        name = aDecoder.decodeObjectForKey("Name") as! String
        mobile = aDecoder.decodeObjectForKey("Mobile") as! String
        image = aDecoder.decodeObjectForKey("Image") as! String
        storeURL = aDecoder.decodeObjectForKey("StoreURL") as! String
        obd_status = aDecoder.decodeObjectForKey("Obd_status") as! String
        huanxinid = aDecoder.decodeObjectForKey("Huanxinid") as! String
        chexing = aDecoder.decodeObjectForKey("Chexing") as! String
        groupid = aDecoder.decodeObjectForKey("Groupid") as! String
        me = aDecoder.decodeObjectForKey("Me") as! String
        typename = aDecoder.decodeObjectForKey("Typename") as! String
        distance = aDecoder.decodeObjectForKey("Distance") as! String
        longitude = aDecoder.decodeObjectForKey("Longitude") as! String
        latitude = aDecoder.decodeObjectForKey("Latitude") as! String
        friends = aDecoder.decodeObjectForKey("Friends") as! [String]
        super.init()
    }

}
