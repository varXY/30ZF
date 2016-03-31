//
//  AlertVC.swift
//  30ZF
//
//  Created by 文川术 on 3/31/16.
//  Copyright © 2016 myname. All rights reserved.
//

import Foundation
import UIKit

protocol AlertUser {
	func alertOfChoices(titleAndMessage: [String], actionTitle: [String], actions: [() -> ()])
}

extension AlertUser where Self: UIViewController {

	func alertOfChoices(titleAndMessage: [String], actionTitle: [String], actions: [() -> ()]) {
		let title: String? = titleAndMessage[0] == "" ? nil : titleAndMessage[0]
		let message: String? = titleAndMessage[1] == "" ? nil : titleAndMessage[1]
		let alertVC = UIAlertController(title: title, message: message, preferredStyle: .Alert)

		var index = 0
		repeat {
			let action = UIAlertAction(title: actionTitle[index], style: .Default) { (_) in
				if actions.count != 0 { actions[index]() }
			}
			alertVC.addAction(action)
			index += 1
		} while index < actionTitle.count - 1

		self.presentViewController(alertVC, animated: true, completion: nil)
	}
}