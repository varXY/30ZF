//
//  JSONModelMapper.swift
//  SelectionOfZhihu
//
//  Created by 杨洋 on 15/12/23.
//  Copyright © 2015年 Sheepy. All rights reserved.
//

import Foundation

enum ConvertError: Error {
    case invalidJSON(errorMessage: String)
}

extension Data {
    func convertToModel<T: NSObject>() -> T? {
        do {
            let json = try JSONSerialization.jsonObject(with: self, options: JSONSerialization.ReadingOptions.mutableContainers)
            let model = json => T.self
            return model
        } catch {
            print("JSONSerializationError: \(error)")
            return nil
        }
    }
}

//不能扩展特定的范型类型！！！
extension Dictionary {
    func convertToModel<T: NSObject>() -> T {
        let model = T()
        let mirror = Mirror(reflecting: model)
        
        mirror.children.forEach {
            guard let key = $0.label else { return }
            var value: Value!
            if self[key as! Key] == nil {
                switch key {
                case "userHash":
                    value = self["hash" as! Key]
                //case "desc":
                    //value = self["description" as! Key]
                default:
                    return 
                }
            } else {
                value = self[key as! Key]
            }
            
            model.setValue(value as? AnyObject, forKey: key)
        }
        
        return model
    }
    
}

extension NSObject {
    func convertToDictinary() -> [String: AnyObject] {
        var dict = [String: AnyObject]()
        let mirror = Mirror(reflecting: self)
        
        mirror.children.forEach {
            dict[$0.0!] = $0.1 as? AnyObject
        }
        
        return dict
    }
    
    func convertToData() -> Data? {
        do {
            let data = try JSONSerialization.data(withJSONObject: self.convertToDictinary(), options: JSONSerialization.WritingOptions.init(rawValue: 0))
            return data
        } catch {
            print("JSONSerializationError: \(error)")
            return nil
        }
    }
}

//infix operator => {
//    precedence 160
//}

func =><T: NSObject>(lhs: Data, rhs: T.Type) -> T? {
    let model: T? = lhs.convertToModel()
    return model
}

func =><T: NSObject>(lhs: AnyObject, rhs: T.Type) -> T? {
    guard let dict = lhs as? [String: AnyObject] else {
        print("Can't convert \(lhs) to [String: AnyObject].")
        return nil
    }
    
    let model: T = dict.convertToModel()
    return model
}
