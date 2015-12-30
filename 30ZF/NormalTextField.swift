//
//  LoginTextField.swift
//  BaiduMapDemo
//
//  Created by Bobo on 15/12/1.
//  Copyright © 2015年 益行人-星夜暮晨. All rights reserved.
//

import Foundation
import UIKit

class NormalTextField: UITextField {
    
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRect(x: 5, y: 0, width: bounds.width - 10, height: bounds.height)
    }
    
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRect(x: 5, y: 0, width: bounds.width - 10, height: bounds.height)
    }
    
    override func placeholderRectForBounds(bounds: CGRect) -> CGRect {
        return CGRect(x: 5, y: 0, width: bounds.width - 10, height: bounds.height)
    }
    
    func getTextFields(frame: CGRect) -> NormalTextField {
        let textField = NormalTextField()
        textField.frame = frame
        textField.layer.cornerRadius = 8
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor.lightGrayColor().CGColor
        textField.textAlignment = .Left
        return textField
    }
}
