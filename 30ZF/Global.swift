//
//  SizeClass.swift
//  Q2
//
//  Created by 文川术 on 15/9/13.
//  Copyright (c) 2015年 xiaoyao. All rights reserved.
//

import Foundation
import UIKit

// 屏幕尺寸信息
let ScreenBounds = UIScreen.main.bounds
let ScreenWidth = ScreenBounds.width
let ScreenHeight = ScreenBounds.height
let BarHeight = UIApplication.shared.statusBarFrame.height

// 日期和数字格式转换
let dateFormatter: DateFormatter = {
	let formatter = DateFormatter()
	formatter.dateFormat = "dd/MM/yy, HH:mm"
	return formatter
	}()

var priceFormatter: NumberFormatter = {
	let pf = NumberFormatter()
	pf.formatterBehavior = .behavior10_4
	pf.numberStyle = .currency
	return pf
}()

// 延迟执行
func delay(seconds: Double, completion:@escaping ()->()) {
	let popTime = DispatchTime.now() + Double(Int64( Double(NSEC_PER_SEC) * seconds )) / Double(NSEC_PER_SEC)

	DispatchQueue.main.asyncAfter(deadline: popTime) {
		completion()
	}

}

// 百度坐标转换成高德坐标
func baiduToGaoDe(_ location: (Double, Double)) -> (Double, Double) {

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

// 为AlertUser占位
func doNoThing() {

}

