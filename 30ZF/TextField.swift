//
//  LoginTextField.swift
//  BaiduMapDemo
//
//  Created by Bobo on 15/12/1.
//  Copyright © 2015年 益行人-星夜暮晨. All rights reserved.
//

import Foundation
import UIKit

// 电工助手里的公式输入框。主要目的是让光标不离边界太近

class NumberInputTextField: UITextField {
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: 5, y: 0, width: bounds.width - 10, height: bounds.height)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: 5, y: 0, width: bounds.width - 10, height: bounds.height)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: 5, y: 0, width: bounds.width - 10, height: bounds.height)
    }
    
    func getTextFields(_ frame: CGRect) -> NumberInputTextField {
        let textField = NumberInputTextField()
        textField.frame = frame
        textField.layer.cornerRadius = 8
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.textAlignment = .left
        return textField
    }
}
