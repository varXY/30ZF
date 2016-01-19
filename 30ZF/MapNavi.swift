//
//  MapNavi.swift
//  HEICHE
//
//  Created by Bobo on 15/12/25.
//  Copyright © 2015年 farawei. All rights reserved.
//

import Foundation
import UIKit
import MapKit

//class MapNavi {
//    
//    func navigationInApp(name: String, userLocation: BMKUserLocation, toLocation: SearchResult) {
////        var nodesArray = [BNRoutePlanNode]()
////        
////        let startPoint = BMapPoint(x: userLocation.location.coordinate.longitude, y: userLocation.location.coordinate.latitude)
////        let naviPosStart = BNPosition()
////        BNTools.ConvertBaiduMapPoint(startPoint, toBaiduNaviPoint: naviPosStart)
////        let startNode = BNRoutePlanNode()
////        startNode.pos = naviPosStart
////        
////        let endPoint = BMapPoint(x: Double(toLocation.longitude)!, y: Double(toLocation.latitude)!)
////        
//        
//        
//    }
//    
//    func gotoMapApp(viewController: UIViewController, userLocation: BMKUserLocation, toLocation: SearchResult) {
//        let alertSheet = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)
//        let gotBaiduMap = UIApplication.sharedApplication().canOpenURL(NSURL(string: "baidumap://")!).boolValue
//        if gotBaiduMap {
//            let action0 = UIAlertAction(title: "百度地图", style: .Default) { (_) -> Void in
//                self.useBaiduMap(userLocation, toLocation: toLocation)
//            }
//            alertSheet.addAction(action0)
//        }
//        
//        let action1 = UIAlertAction(title: "系统自带地图", style: .Default) { (_) -> Void in
//            self.useAppleMap(toLocation)
//        }
//        let action2 = UIAlertAction(title: "取消", style: .Cancel, handler: nil)
//        
//        alertSheet.addAction(action1)
//        alertSheet.addAction(action2)
//        
//        viewController.presentViewController(alertSheet, animated: true, completion: nil)
//        
//        
//    }
//    
//    func useAppleMap(toLocation: SearchResult) {
//        
//        let toNumbers = (Double(toLocation.longitude)!, Double(toLocation.latitude)!)
//        let notBaidu = loadServices.changeToGaoDe(toNumbers)
//        let coor1 = CLLocationCoordinate2D(latitude: notBaidu.1, longitude: notBaidu.0)
//        
//        let placemark1 = MKPlacemark(coordinate: coor1, addressDictionary: [kABPersonAddressStreetKey as String: toLocation.name])
//        let toLocation = MKMapItem(placemark: placemark1)
//        
//        MKMapItem.openMapsWithItems([toLocation], launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
//        
//        
//    }
//    
//    func useBaiduMap(userLocation: BMKUserLocation, toLocation: SearchResult) {
//        
//        let coor0 = CLLocationCoordinate2D(latitude: userLocation.location.coordinate.latitude, longitude: userLocation.location.coordinate.longitude)
//        let coor1 = CLLocationCoordinate2D(latitude: Double(toLocation.latitude)!, longitude: Double(toLocation.longitude)!)
//        
//        let string = String(format: "baidumap://map/direction?origin=%@,%@&destination=%@,%@&mode=driving", "\(coor0.latitude)", "\(coor0.longitude)", "\(coor1.latitude)", "\(coor1.longitude)")
//        UIApplication.sharedApplication().openURL(NSURL(string: string)!)
//        
//    }
//}