
//
//  Attributes.swift
//  Questions
//
//  Created by 文川术 on 15/9/3.
//  Copyright (c) 2015年 xiaoyao. All rights reserved.
//

import UIKit
import Foundation

class Generator {


//    func genEightButtonView() -> UIView {
//        let eightButtonView = UIView(frame: CGRectMake(0, 0, global.size.width, global.size.height * 0.345))
//        
//        let imageNames = ["earth", "tree", "wayline", "flags", "bluehouse", "redhouse", "hotel", "hill"]
//        let titles = ["境外", "境内", "线路", "特惠", "民宿", "营地", "酒店", "景点"]
//        for i in 0..<8 {
//            let scale = i < 4 ? i : i - 4
//            let height = i < 4 ? 0 : (eightButtonView.frame.size.height / 2)
//            let point = CGPointMake((global.size.width / 4) * CGFloat(scale), height)
//            let smallTap = genSmallTapOneInEight(point, title: titles[i], image: imageNames[i], tag: i)
//            eightButtonView.addSubview(smallTap)
//        }
//        
//        return eightButtonView
//    }
//    
//    func genSmallTapOneInEight(point: CGPoint, title: String, image: String, tag: Int) -> UIButton {
//        let oneInEight = UIButton(type: .System)
//        oneInEight.tag = tag
//        oneInEight.frame.origin = point
//        oneInEight.frame.size = CGSizeMake(global.size.width / 4, (global.size.height * 0.345) / 2)
//        
//        let titleLabel = UILabel(frame: CGRectMake(0, 68, oneInEight.frame.size.width, 20))
//        titleLabel.textAlignment = .Center
//        titleLabel.text = title
//        oneInEight.addSubview(titleLabel)
//        
//        let titleImageView = UIImageView(frame: CGRectMake(global.size.width / 4 / 2 - 22.5, 34 - 22.5, 45, 45))
//        titleImageView.image = UIImage(named: image)
//        oneInEight.addSubview(titleImageView)
//        
//        return oneInEight
//    }
//    
//    func genTextView(frame: CGRect) -> UITextView {
//        let textView = UITextView(frame: frame)
//        textView.layer.cornerRadius = 8
//        textView.layer.borderWidth = 1.0
//        textView.layer.borderColor = UIColor.lightGrayColor().CGColor
//        textView.textAlignment = .Left
//        textView.font = UIFont.systemFontOfSize(18)
//        textView.contentOffset = CGPoint(x: 0.0, y: 0.0)
//        
//        textView.contentSize = CGSizeMake(frame.width - 10, frame.height - 10)
//        textView.textContainerInset = UIEdgeInsets(top: 10, left: 1.5, bottom: 10, right: 1.5)
//        
//        return textView
//    }
//    
//    func genRoundButton(title: String, frame: CGRect) -> UIButton? {
//        let button = UIButton(type: .System)
//        button.frame = CGRect(x: round(frame.origin.x), y: round(frame.origin.y), width: round(frame.size.width), height: round(frame.size.height))
//        button.tintColor = UIColor.redColor()
//        button.setTitle(title, forState: .Normal)
//        button.titleLabel?.font = UIFont.systemFontOfSize(16)
//        button.backgroundColor = UIColor.whiteColor()
//        button.layer.cornerRadius = frame.height / 2
//        button.clipsToBounds = true
//        
//        return button
//    }
//    
//    func genScrollView(page: Int) -> UIScrollView {
//        let scrollView = UIScrollView()
//        scrollView.frame = CGRectMake(0, 0, global.size.width, global.size.height)
//        scrollView.backgroundColor = Global.backgroundColor()
//        scrollView.pagingEnabled = true
//        scrollView.scrollEnabled = false
//        scrollView.contentSize = CGSize(width: global.size.width * CGFloat(page), height: global.size.height)
//        
//        return scrollView
//    }
//
//    func genWebView(tag: Int) -> UIWebView {
//        let webView = UIWebView()
//        webView.frame = CGRectMake(global.size.width * CGFloat(tag - 100), 0, global.size.width, global.size.height - 49 - 64)
//        webView.tag = tag
//        
//        return webView
//    }
//    
//    func genSmallButtonForBubble(imageName: String) -> UIButton {
//        let button = UIButton(type: .System)
//        button.frame = CGRectMake(0, 0, 32, 32)
//        button.backgroundColor = UIColor.whiteColor()
//        button.setImage(UIImage(named: imageName), forState: .Normal)
//        button.showsTouchWhenHighlighted = false
//
//        return button
//    }
//
//    func genFilterButtonsView() -> UIView {
//        let PageWidth = global.size.width
//        let width = PageWidth / 5
//        let titles = ["主  页", "汽车维修", "汽车美容", "增值服务", "行业资讯"]
//        let buttonView = UIView(frame: CGRectMake(0, 20, PageWidth, 44))
//        
//        for i in 0..<5 {
//            let rect = CGRectMake((width * CGFloat(i)), 0, width, 44)
//            let button = genButton(titles[i], frame: rect)
//            button?.tag = i + 1010
//            buttonView.addSubview(button!)
//        }
//        
//        return buttonView
//    }
//    
//    func genFilterButtonsView4() -> UIView {
//        let PageWidth = global.size.width
//        let width = PageWidth / 4
//        let titles = ["汽车维修", "汽车美容", "增值服务", "行业资讯"]
//        let buttonView = UIView(frame: CGRectMake(0, 20, PageWidth, 44))
//        
//        for i in 0..<4 {
//            let rect = CGRectMake((width * CGFloat(i)), 0, width, 44)
//            let button = genButton(titles[i], frame: rect)
//            button?.tag = i + 1010
//            buttonView.addSubview(button!)
//        }
//        
//        return buttonView
//    }
//    
//    func genFakeTabButton(title: String, image: String, point: CGPoint) -> UIButton {
//        let button = UIButton(type: .System)
//        button.frame.origin = point
//        button.frame.size = CGSizeMake(global.size.width / 5, 49)
//        
//        let label = UILabel(frame: CGRectMake(0, 34, button.frame.size.width, 15))
//        label.font = UIFont.systemFontOfSize(8)
//        label.textAlignment = .Center
//        label.text = title
//        button.addSubview(label)
//        
//        let imageView = UIImageView(frame: CGRectMake(button.frame.width / 2 - 11, 4, 22, 32))
//        imageView.image = UIImage(named: image)
//        imageView.tag = 11011
//        button.addSubview(imageView)
//        
//        button.backgroundColor = UIColor.whiteColor()
//        
//        return button
//        
//    }
//    
//    func genFakeTabBar() -> [UIButton] {
//        
//        var buttons = [UIButton]()
//        
//        let PageWidth = global.size.width
//        let width = PageWidth / 5
//        let y = global.size.height - 49 - 64 - 49
//
//        let titles = ["个人", "服务店", "酒店", "餐饮", "景点"]
//        let images = ["member-location0", "station-location0", "hotel-location0", "food-location0", "area-location0"]
//        
//        for i in 0..<5 {
//            let point = CGPointMake(PageWidth + width * CGFloat(i), y)
//            let button = genFakeTabButton(titles[i], image: images[i], point: point)
//            button.tag = 1100 + i
//            buttons.append(button)
//        }
//        
//        return buttons
//    }
//    
//    func genButton(title: String, frame: CGRect) -> UIButton? {
//        let button = UIButton(type: .System)
//        button.frame = CGRect(x: round(frame.origin.x), y: round(frame.origin.y), width: round(frame.size.width), height: round(frame.size.height))
//        button.backgroundColor = UIColor.clearColor()
//        button.setTitle(title, forState: .Normal)
//        button.tintColor = UIColor.whiteColor()
//        button.titleLabel?.textAlignment = .Center
//        button.titleLabel?.textRectForBounds(CGRectMake(0, 10, button.frame.width, button.frame.height - 10), limitedToNumberOfLines: 1)
//        button.titleLabel?.font = UIFont.boldSystemFontOfSize(14)
//        
//        return button
//    }



}