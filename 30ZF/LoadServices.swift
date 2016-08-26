//
//  LoadServices.swift
//  BaiduMapDemo
//
//  Created by Bobo on 15/12/7.
//  Copyright © 2015年 益行人-星夜暮晨. All rights reserved.
//

import Foundation
import UIKit
import MapKit
//import AddressBook
import Contacts

protocol systemServices: AlertUser {
	func call(_ viewController: UIViewController, number: String)
	func sendText(_ number: String)
}

extension systemServices {

	func call(_ viewController: UIViewController, number: String) {

		func call() {
			UIApplication.shared.openURL(URL(string: "tel://" + number)!)
		}

		alertOfChoices([number, ""], actionTitle: ["呼叫", "取消"], actions: [call, doNoThing])

	}

	func sendText(_ number: String) {
		UIApplication.shared.openURL(URL(string: "sms://" + number)!)
	}

}

class loadServices {
    
    class func useAppleMap(_ toLocation: SearchResult) {
        
        let toNumbers = (Double(toLocation.longitude)!, Double(toLocation.latitude)!)
        let notBaidu = loadServices.changeToGaoDe(toNumbers)
        let coor1 = CLLocationCoordinate2D(latitude: notBaidu.1, longitude: notBaidu.0)
        
        let placemark1 = MKPlacemark(coordinate: coor1, addressDictionary: [CNPostalAddressStreetKey: toLocation.name])
        let toLocation = MKMapItem(placemark: placemark1)
        
        MKMapItem.openMaps(with: [toLocation], launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
        
        
    }
    
    class func changeToGaoDe(_ location: (Double, Double)) -> (Double, Double) {
        
        var returnLocation: (Double, Double) = (0.0, 0.0)
        let x_pi = 3.14159265358979324 * 3000.0 / 180.0
        
        let x = location.0 - 0.0065
        let y = location.1 - 0.006
        let z = sqrt(x * x + y * y) - 0.00002 * sin(y * x_pi)
        let theta = atan2(y, x) - 0.000003 * cos(x * x_pi)
        
        returnLocation.0 = z * cos(theta)
        returnLocation.1 = z * sin(theta)
        
        return returnLocation
    }
    
    class func call(_ viewController: UIViewController, number: String) {
        let alert = UIAlertController(title: number, message: nil, preferredStyle: .alert)
        let action1 = UIAlertAction(title: "呼叫", style: .default) { (_) -> Void in
            UIApplication.shared.openURL(URL(string: "tel://" + number)!)
        }
        let action2 = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        alert.addAction(action1)
        alert.addAction(action2)
        viewController.present(alert, animated: true, completion: nil)
    }
    
    class func sendText(_ number: String) {
        UIApplication.shared.openURL(URL(string: "sms://" + number)!)
    }

}
